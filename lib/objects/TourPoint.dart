import 'package:latlong2/latlong.dart';

class TourPoint {

  LatLng Position = LatLng(0, 0);
  String? Name;
  String? Description;
  List<String> FactsList = [];
  String ImgPath = "";

  TourPoint(LatLng position, String name, String description,
      List<String> factsList, String imgPath) {
    Position = position;
    Name = name;
    Description = description;
    FactsList = factsList;
    ImgPath = imgPath;
  }
}