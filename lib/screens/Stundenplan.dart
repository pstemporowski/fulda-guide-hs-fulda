import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:async';
import 'package:adobe_xd/page_link.dart';

import 'dart:convert';
import 'package:icalendar_parser/icalendar_parser.dart';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Home1.dart';

final storage = const FlutterSecureStorage();

class Stundenplan extends StatelessWidget {
  Stundenplan({
    Key? key,
  }) : super(key: key);
  final CalendarController _controller = CalendarController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff82a47d),
      body: Stack(children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(0.0, 111.0, 0.0, 0.0),
          child: SizedBox.expand(
              child: SvgPicture.string(
            _svg_grnki1,
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          )),
        ),
        Pinned.fromPins(
          Pin(size: 222.0, middle: 0.5),
          Pin(size: 157.0, start: -8.0),
          child: Stack(
            children: <Widget>[
              PageLink(
                links: [
                  PageLinkInfo(
                    pageBuilder: () => Home1(),
                  ),
                ],
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const AssetImage('lib/assets/images/Logo.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0.0, 170.0, 0.0, 0.0),
          child: FutureBuilder(
              future: GetAppointments(context),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.data != null) {
                  return Container(
                    child: SfCalendar(
                      initialSelectedDate: DateTime.now(),
                      dataSource: snapshot.data,
                      firstDayOfWeek: 1,
                      onTap: calendarTapped,
                      selectionDecoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(color: Colors.white, width: 2),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(4)),
                        shape: BoxShape.rectangle,
                      ),
                      view: CalendarView.day,
                      allowedViews: [
                        CalendarView.day,
                        CalendarView.workWeek,
                        CalendarView.month,
                        CalendarView.timelineWorkWeek,
                      ],
                      showNavigationArrow: true,
                      monthViewSettings: MonthViewSettings(
                          showTrailingAndLeadingDates: false,
                          showAgenda: true,
                          agendaStyle: AgendaStyle(
                              placeholderTextStyle:
                                  TextStyle(color: Colors.white))),
                      appointmentTextStyle:
                          TextStyle(color: Colors.white, fontSize: 12),
                      showCurrentTimeIndicator: true,
                      todayTextStyle: TextStyle(color: Colors.white),
                      timeSlotViewSettings: TimeSlotViewSettings(
                        timeFormat: 'HH:mm',
                      ),
                      todayHighlightColor: Colors.green,
                      timeZone: "Central European Standard Time",
                      headerStyle: CalendarHeaderStyle(
                          backgroundColor: Colors.transparent,
                          textAlign: TextAlign.center,
                          textStyle: TextStyle(color: Colors.black)),
                    ),
                  );
                } else {
                  return Container(
                    child: Center(
                      child: Text('loading'),
                    ),
                  );
                }
              }),
        )
      ]),
    );
  }

  void calendarTapped(CalendarTapDetails calendarTapDetails) {
    if (_controller.view == CalendarView.month &&
        calendarTapDetails.targetElement == CalendarElement.calendarCell) {
      _controller.view = CalendarView.day;
    } else if ((_controller.view == CalendarView.week ||
            _controller.view == CalendarView.workWeek) &&
        calendarTapDetails.targetElement == CalendarElement.viewHeader) {
      _controller.view = CalendarView.day;
    }
  }
}

Future setPathToFile(String path) async {
  await storage.write(key: 'icsPath', value: path);
}

Future<String?> getPathToFile() async {
  return await storage.read(key: 'icsPath');
}

Future<_AppointmentDataSource> GetAppointments(BuildContext context) async {
  File file = new File("");
  var list = List<Appointment>.empty(growable: true);
  String? path = await getPathToFile();
  FilePickerResult? result;
  if (path == null) {
    await showDialog(
        context: context,
        builder: (BuildContext context) => _buildPopupDialog(context));
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result == null) return _AppointmentDataSource(list);

    path = result.files.first.path.toString() ?? "";
    setPathToFile(path);
  }

  ICalendar? icsObj;
  file = File(path);
  icsObj = ICalendar.fromLines(file.readAsLinesSync());
  icsObj.data.forEach((Map<String, dynamic> element) {
    if (element['type'] == "VEVENT") list.add(getAppointment(element));
  });

  return _AppointmentDataSource(list);
}

Widget _buildPopupDialog(BuildContext context) {
  return new AlertDialog(
    insetPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
    title: const Text(
      "Tutorial: Stundenplan implementieren",
      style: TextStyle(fontSize: 17),
    ),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("1. Sie müssen sich mit dem Handy-Browser auf Horstl anmelden",
            style: TextStyle(fontSize: 15)),
        Text("2. Auf den Button 'Daten für iCalendar(ics) exportieren' klicken",
            style: TextStyle(fontSize: 15)),
        Text(
            "3. nach dem 'Verstanden'-Klicken kommt ein Fenster wo man die herruntergeladene Datei auswählen muss",
            style: TextStyle(fontSize: 15)),
      ],
    ),
    actions: <Widget>[
      TextButton(
        child: const Text('zur Horstl'),
        onPressed: () {
          launchUrl(Uri.parse("https://horstl.hs-fulda.de"),
              mode: LaunchMode.externalApplication);
        },
      ),
      TextButton(
        child: const Text('Verstanden'),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    ],
  );
}

Appointment getAppointment(Map<String, dynamic> json) {
  var startDecodedJson = jsonDecode(jsonEncode(json['dtstart']));
  var startDT;
  if (startDecodedJson != null)
    startDT = DateTime.tryParse(startDecodedJson['dt']);

  var endDecodedJson = jsonDecode(jsonEncode(json['dtend']))['dt'];
  DateTime endDT = DateTime.tryParse(endDecodedJson) ?? DateTime(2022);
  return Appointment(
      startTime: startDT,
      endTime: endDT,
      recurrenceRule: json['rrule'],
      subject: json['summary'],
      notes: json['location'],
      location: json['location'],
      color: Colors.green);
}

class _AppointmentDataSource extends CalendarDataSource {
  _AppointmentDataSource(List<Appointment> source) {
    appointments = source;
  }
}

const String _svg_grnki1 =
    '<svg viewBox="0.0 111.0 430.0 821.0" ><path transform="translate(-4809.22, -105.81)" d="M 4809.2158203125 235.9864654541016 L 4809.2158203125 1037.805908203125 L 5239.2158203125 1037.805908203125 L 5239.2158203125 258.1225891113281 C 5239.2158203125 258.1225891113281 5200.91162109375 302.3948059082031 5135.4228515625 266.7310791015625 C 5106.90185546875 253.0500183105469 5094.7890625 234.965576171875 5042.4404296875 227.2151031494141 C 5003.9365234375 225.0621948242188 4923.466796875 263.3840026855469 4866.3603515625 230.2291717529297 C 4809.25341796875 197.0743560791016 4809.2158203125 235.9864654541016 4809.2158203125 235.9864654541016 Z" fill="#407e39" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
