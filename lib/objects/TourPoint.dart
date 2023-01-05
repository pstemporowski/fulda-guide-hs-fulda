import 'package:latlong2/latlong.dart';

class TourPoint {

  LatLng Position = LatLng(0, 0);
  String? Name;
  String? Description;
  List<String> FactsList = [];

  TourPoint(LatLng position, String name, String description, List<String> factsList){
      Position = position;
      Name = name;
      Description = description;
      FactsList = factsList;
  }
}