import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';
import 'package:latlong2/latlong.dart';
import 'package:syncfusion_flutter_maps/maps.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:http/http.dart' as http;
import 'package:geolocator/geolocator.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State createState() => _InitExampleState();
}
List<LatLng> PolylineList = [];
Position? UserPosition;
LatLng BuildingPosition = LatLng(50.565098, 9.685508);

class _InitExampleState extends State {
  MapZoomPanBehavior? _zoomPanBehavior;
  Timer? timer;
  @override
  void initState() {
    //print(json.decoder(fetchRoute()));
    getPermission();
    _zoomPanBehavior = MapZoomPanBehavior();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getPolylineCoordinates(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.data != null) {
            PolylineList = snapshot.data;
            print("Getting Data");
            return FlutterMap(
              options:
                  MapOptions(center: LatLng(50.565385, 9.688258), zoom: 17),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                ),
                currentLocationLayerFunc(),

                MarkerLayer(
                  markers: [
                    Marker(point: BuildingPosition,
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
            );
          } else {
            return Container(
              child: Center(
                child: Text('Loading'),
              ),
            );
          }
        });
  }
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

Future<List<LatLng>> getPolylineCoordinates() async {
  var response = await fetchRoute();
  List<dynamic> coordinates = jsonDecode(jsonEncode(jsonDecode(response.body)['features'][0]['geometry']))['coordinates'];
  return coordinates.map((pair) => LatLng(pair[1], pair[0])).toList();
}

Future<http.Response> fetchRoute() async {

  return await http.get(Uri.parse(
      'https://api.openrouteservice.org/v2/directions/foot-walking?api_key=5b3ce3597851110001cf62480a86fdc08af84ae99421b3f1afe78066&start=${UserPosition!.longitude},${UserPosition!.latitude}&end=${BuildingPosition!.longitude},${BuildingPosition!.latitude}'), headers: {
    'Accept': 'application/json, application/geo+json, application/gpx+xml, img/png; charset=utf-8',
  });
}
