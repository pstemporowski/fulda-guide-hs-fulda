import 'dart:convert';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:icalendar_parser/icalendar_parser.dart';
import 'dart:async';
import 'dart:io';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class CalenderScreen extends StatelessWidget {
  const CalenderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Got into building");
    ICalendar obj;
    //obj = Future.wait(getFile()).whenComplete() => null)
    //print(icsObj.readLines);
    return SafeArea(
      child: Scaffold(
          body: FutureBuilder(
            future: GetAppointments(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if(snapshot.data != null) {

                return Container(
                    child: SfCalendar(
                  dataSource: snapshot.data,
                    view: CalendarView.workWeek,

                 ),
              );
              }else {
                return Container(
                  child: Center(
                    child: Text('loading'),
                  ),
                );
              }
            }

          )
      ),
    );
  }
}

Future<_AppointmentDataSource> GetAppointments() async{
  FilePickerResult? result = await FilePicker.platform.pickFiles();
  File file = new File("");
  var list = List<Appointment>.empty(growable: true);
  ICalendar? icsObj;
  if (result != null) {
    String path = result.files.first.path.toString() ?? "";
    file = new File(path);

    icsObj = ICalendar.fromLines(file.readAsLinesSync());

    icsObj.data.forEach((Map<String, dynamic> element) {
      if(element['type'] == "VEVENT")
        list.add(getAppointment(element));
    });

    print("Appointments are ready");
  }

  return _AppointmentDataSource(list);
}

Appointment getAppointment(Map<String, dynamic> json) {

    var startDecodedJson = jsonDecode(jsonEncode(json['dtstart']));
    var startDT;
    if(startDecodedJson != null)
      startDT = DateTime.tryParse(startDecodedJson['dt']);

    var endDecodedJson = jsonDecode(jsonEncode(json['dtend']))['dt'];
    DateTime endDT = DateTime.tryParse(endDecodedJson) ?? DateTime(2022);
    return Appointment(startTime: startDT, endTime: endDT, recurrenceRule: json['rrule'], subject: json['summary'], notes: json['location'], location: json['location']);
}

class _AppointmentDataSource extends CalendarDataSource {
  _AppointmentDataSource(List<Appointment> source){
    appointments = source;
  }
}
