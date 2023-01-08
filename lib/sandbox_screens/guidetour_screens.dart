import 'dart:async';
import 'dart:convert';

import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';
import 'package:latlong2/latlong.dart';
import 'package:syncfusion_flutter_maps/maps.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:http/http.dart' as http;
import 'package:geolocator/geolocator.dart';
import 'package:timelines/timelines.dart';

import '../objects/TourPoint.dart';
List<LatLng> PolylineList = [];
Position? UserPosition;
int TourIndex = 0;

List<TourPoint> TourPoints = [
  new TourPoint(LatLng(50.554302, 9.677223), "Dom" , "Die Kneipe ist Super", ["Wahrzeichen von Fulda", "Kathedrale des Bistums Fulda", "Grabeskirche des heiligen Bonifitus"]),
  new TourPoint(LatLng(50.551854, 9.677044), "Kneipe2" , "Die Kneipe ist Super", ["Wahrzeichen von Fulda", "Kathedrale des Bistums Fulda", "Grabeskirche des heiligen Bonifitus"]),
  new TourPoint(LatLng(50.549795, 9.682844), "Kneipe3" , "Die Kneipe ist Super", ["Wahrzeichen von Fulda", "Kathedrale des Bistums Fulda", "Grabeskirche des heiligen Bonifitus"]),
  new TourPoint(LatLng(50.553567, 9.684738), "Kneipe4" , "Die Kneipe ist Super", ["Wahrzeichen von Fulda", "Kathedrale des Bistums Fulda", "Grabeskirche des heiligen Bonifitus"]),
  new TourPoint(LatLng(50.559837, 9.680318), "Kneipe5" , "Die Kneipe ist Super", ["Wahrzeichen von Fulda", "Kathedrale des Bistums Fulda", "Grabeskirche des heiligen Bonifitus"]),
  new TourPoint(LatLng(50.559837, 9.680318), "Kneipe5" , "Die Kneipe ist Super", ["Wahrzeichen von Fulda", "Kathedrale des Bistums Fulda", "Grabeskirche des heiligen Bonifitus"]),
  new TourPoint(LatLng(50.559837, 9.680318), "Kneipe5" , "Die Kneipe ist Super", ["Wahrzeichen von Fulda", "Kathedrale des Bistums Fulda", "Grabeskirche des heiligen Bonifitus"]),
  new TourPoint(LatLng(50.559837, 9.680318), "Kneipe5" , "Die Kneipe ist Super", ["Wahrzeichen von Fulda", "Kathedrale des Bistums Fulda", "Grabeskirche des heiligen Bonifitus"]),
  new TourPoint(LatLng(50.559837, 9.680318), "Kneipe5" , "Die Kneipe ist Super", ["Wahrzeichen von Fulda", "Kathedrale des Bistums Fulda", "Grabeskirche des heiligen Bonifitus"]),
];

bool IsOpenBottomSheet = false;
TourPoint TargetPoint = TourPoints[TourIndex];
final scaffoldState = GlobalKey<ScaffoldState>();
class GuideTour extends StatefulWidget {
  const GuideTour({super.key});

  @override
  State createState() => _InitExampleState();
}

class _InitExampleState extends State {
  MapZoomPanBehavior? _zoomPanBehavior;
  Timer? timer;
  @override
  void initState() {
    //print(json.decoder(fetchRoute()));
    getPermission();
    print("Get Persmissions");

    _zoomPanBehavior = MapZoomPanBehavior();
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      timer = Timer.periodic(Duration(seconds: 60), (Timer t) => UpdatePolylines());
      timer = Timer.periodic(Duration(seconds: 5), (Timer t) => CheckDeviceLocation());
    });

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: scaffoldState,
      body: FutureBuilder(
          future: getPolylineCoordinates(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              PolylineList = snapshot.data;
              print("Getting Data");
              return Stack(
                children: [
                  FlutterMap(
                    options:
                    MapOptions(center: LatLng(UserPosition!.latitude, UserPosition!.longitude), zoom: 17),
                    children: [
                      TileLayer(
                        urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                      ),

                      currentLocationLayerFunc(),
                      MarkerLayer(

                        markers: [
                          Marker(point: TargetPoint.Position,
                            builder:(ctx) => Container(
                              width: 50,
                              height: 50,
                              transform: Matrix4.translationValues(-10, -25.0, 0.0),
                              child: Icon(Icons.location_on, color: Colors.green, size: 50),
                              alignment: AlignmentDirectional.center,
                            ),
                          )
                        ],
                      ),
                      PolylineLayer(
                        polylineCulling: false,
                        polylines: [
                          Polyline(
                              points: PolylineList,
                              color: Colors.blue,
                              strokeWidth: 5
                          ),
                        ],
                      ),

                    ],
                  ),
                  SafeArea(
                    child: GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(color: Color.fromARGB(140, 255, 255, 255), borderRadius: BorderRadius.circular(10)),
                          child: const Icon(Icons.list),

                        ),
                      ),
                      onTap: OpenBottomSheet
                    ),
                  ),
                  SafeArea(
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              color: Colors.green
                          ),

                          padding: EdgeInsets.all(5),
                          child: Text("Nächstes Ziel: " + TargetPoint.Name!,
                              textAlign: TextAlign.center
                              ,textDirection: null,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,)
                          ),
                        ),
                      ),
                    ),
                  ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: GestureDetector(
                        onTap: () {
                            setState(() {
                              TargetPoint = TourPoints[++TourIndex];
                            });
                            UpdatePolylines();
                        },
                        child: Container(
                          margin: EdgeInsets.only(bottom: 50),
                          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.green
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Ziel Überspringen", style: TextStyle(
                              color: Colors.white
                            )),
                          ),
                        ),
                      ),
                    ),

                ],
              );
            } else {
              return Container(
                child: Center(
                  child: Text('Loading'),
                ),
              );
            }
          }),
    );


  }

  void UpdatePolylines() async {
    var polylines = await getPolylineCoordinates();
    setState(() {
      PolylineList = polylines;
    });

  }

  void OpenBottomSheet() async {
    IsOpenBottomSheet = true;
    await popup(GetBottomSheetTimeLineContent());
    IsOpenBottomSheet = false;
  }

  void CheckDeviceLocation() async {
    UserPosition = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.medium);

    if (!IsOpenBottomSheet && calculateDistanceLatLang(TargetPoint.Position, LatLng(UserPosition!.latitude, UserPosition!.longitude )) < 40) {
      IsOpenBottomSheet = true;
      await popup(GetBottomSheetContent());
      setState(() {
        TargetPoint = TourPoints[++TourIndex];
      });
      UpdatePolylines();
      IsOpenBottomSheet = false;
    }

  }

  Future<void> popup(Widget bottomSheetContent) async{
      await scaffoldState.currentState!
          .showBottomSheet((context) =>
        bottomSheetContent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)))
         ).closed;
  }
}



Widget GetBottomSheetContent() {
  return FractionallySizedBox(
    widthFactor: 1,
    heightFactor: 0.85,
    child: Container(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(border: Border.all(color: Colors.black12), borderRadius: BorderRadius.all(Radius.circular(40))),
            height: 300,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              child: Image(
                image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/5/5b/140519_Dom_Fulda_Frontansicht.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(TargetPoint.Name ?? "", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          Expanded(
              child: ListView.builder(
                itemCount: TourPoints[TourIndex].FactsList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('- ${TourPoints[TourIndex].FactsList[index]}'),
                  );
                },
              )
          )
        ],
      ),
    ),
  );
}

Widget GetBottomSheetTimeLineContent() {
  return FractionallySizedBox(
    widthFactor: 1,
    heightFactor: 0.85,
    child: Container(
      margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
      child: Timeline.tileBuilder(

        theme: TimelineThemeData(
          indicatorTheme:IndicatorThemeData(
            color: Colors.black
          )
        ),

          builder: TimelineTileBuilder.connectedFromStyle(
            lastConnectorStyle: ConnectorStyle.dashedLine,
            connectorStyleBuilder: (context, index) {
              if(index < TourIndex)
                return ConnectorStyle.solidLine;
              else
                return ConnectorStyle.dashedLine;

              return ConnectorStyle.dashedLine;
            },

            indicatorStyleBuilder: (context, index) {
              if(index == TourIndex)
                return  IndicatorStyle.dot;
              else if(index < TourIndex)
                return IndicatorStyle.dot;
              else return IndicatorStyle.outlined;
            },
          contentsAlign: ContentsAlign.alternating,
          contentsBuilder: (context, index) => Container(
            decoration: BoxDecoration(border: Border.all(width: GetWidth(index),color: GetColor(index)), borderRadius: BorderRadius.all(Radius.circular(20))),
            height: 100,
            width: double.infinity,
              child: Stack(
                fit: StackFit.expand,
                children:[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image(
                      image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/5/5b/140519_Dom_Fulda_Frontansicht.jpg"),
                        fit: BoxFit.cover,
                      ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      TourPoints[index].Name ?? "",
                      style: TextStyle(
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            blurRadius: 2.0,
                            color: Colors.black12,
                            offset: Offset(2.0, 2.0),
                          ),
                        ]
                      ),
                    ),
                  )
                ]
              ),
          ),
            itemCount: TourPoints.length,
          ),
        )
      )
  );
}

Color GetColor(int index) {
  if(TourIndex == index)
    return Colors.green;
   else return Colors.black12;
}

double GetWidth(int index) {
  if(TourIndex == index)
    return 4;
  else return 1;
}

CurrentLocationLayer currentLocationLayerFunc() {
  return CurrentLocationLayer(
    centerOnLocationUpdate: CenterOnLocationUpdate.never,
    turnOnHeadingUpdate: TurnOnHeadingUpdate.never,
    style: const LocationMarkerStyle(
      showAccuracyCircle: true,
      marker: DefaultLocationMarker(
        child: Icon(
          Icons.navigation,
          size: 10,
          color: Colors.white,
        ),
      ),
      markerSize: const Size(15, 15),
      markerDirection: MarkerDirection.heading,
    ),
  );
}

void getPermission() async {
  if (await Permission.location.serviceStatus.isEnabled) {
    var status = await Permission.location.status;
    if (status.isGranted) {
      UserPosition = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    } else if (status.isDenied) {
      Map<Permission, PermissionStatus> status = await [
        Permission.location,
      ].request();

      if (await Permission.location.isPermanentlyDenied) {
        openAppSettings();
      }
    }
  } else {
    openAppSettings();
  }
}

double calculateDistanceLatLang(LatLng pos1, LatLng pos2){
  return calculateDistance(pos1.latitude, pos1.longitude, pos2.latitude, pos2.longitude);
}

double calculateDistance(lat1, lon1, lat2, lon2){
  var p = 0.017453292519943295;
  var c = cos;
  var a = 0.5 - c((lat2 - lat1) * p)/2 +
      c(lat1 * p) * c(lat2 * p) *
          (1 - c((lon2 - lon1) * p))/2;
  return 12742 * asin(sqrt(a)) * 1000;
}

Future<List<LatLng>> getPolylineCoordinates() async {
  UserPosition = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  var response = await fetchRoute();
  if(response.statusCode > 300)
    return List<LatLng>.empty(growable: true);

  print("getting Coordinates");
  List<dynamic> coordinates = jsonDecode(jsonEncode(jsonDecode(response.body)['features'][0]['geometry']))['coordinates'];
  return coordinates.map((pair) => LatLng(pair[1], pair[0])).toList();


}

Future<http.Response> fetchRoute() async {
  return await http.get(Uri.parse(
      'https://api.openrouteservice.org/v2/directions/foot-walking?api_key=5b3ce3597851110001cf62480a86fdc08af84ae99421b3f1afe78066&start=${UserPosition!.longitude},${UserPosition!.latitude}&end=${TargetPoint.Position.longitude},${TargetPoint.Position.latitude}'), headers: {
    'Accept': 'application/json, application/geo+json, application/gpx+xml, img/png; charset=utf-8',
  });
}


