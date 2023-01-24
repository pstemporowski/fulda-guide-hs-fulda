import '../objects/TourPoint.dart';
import 'package:latlong2/latlong.dart';

TourPoint getBarTourPoint(String title, LatLng position) {
  return TourPoint(position, title, '', [], 'lib/assets/images/Kneipe.png');
}

TourPoint getRestaurantsTourPoint(String title, LatLng position) {
  return TourPoint(position, title, '', [], 'lib/assets/images/Restaurant.png');
}

TourPoint getLeisureTimeTourPoint(String title, LatLng position) {
  return TourPoint(position, title, '', [], 'lib/assets/images/Freizeit.png');
}

class HotspotsList {
  static List<TourPoint> Bars = [
    getBarTourPoint('Heimat', new LatLng(50.550394, 9.678067)),
    getBarTourPoint('Windmühle', new LatLng(50.549765, 9.676436)),
    getBarTourPoint('Schöppchen ', new LatLng(50.549715, 9.676177)),
    getBarTourPoint('Krokodil ', new LatLng(50.549527, 9.675638)),
    getBarTourPoint('Barock Bar', new LatLng(50.549749, 9.675528)),
    getBarTourPoint('Altstadt', new LatLng(50.549817, 9.675449)),
    getBarTourPoint(
        'Stadtwächter', new LatLng(50.55235831049651, 9.674870938047961)),
    getBarTourPoint('Viva Havanna', new LatLng(50.553186, 9.674774))
  ];

  static List<TourPoint> Restaurants = [
    getRestaurantsTourPoint('Orange', new LatLng(50.554214, 9.682982)),
    getRestaurantsTourPoint('Hans im Glück', new LatLng(50.552280, 9.679578)),
    getRestaurantsTourPoint('Aiko', new LatLng(50.553229, 9.678398)),
    getRestaurantsTourPoint('Viva Havanna', new LatLng(50.553184, 9.674765)),
    getRestaurantsTourPoint('Little Tokyo', new LatLng(50.550637, 9.675268)),
    getRestaurantsTourPoint(
        'Vini & Panini', new LatLng(50.55157421426082, 9.67761240798048)),
    getRestaurantsTourPoint('Alte Schule', new LatLng(50.551341, 9.678073)),
    getRestaurantsTourPoint(
        'Chaang Noi', new LatLng(50.55060255326891, 9.677568823067988)),
    getRestaurantsTourPoint('Chidoba', new LatLng(50.548237, 9.688701)),
  ];

  static List<TourPoint> Leisure = [
    getLeisureTimeTourPoint(
        'Minigolf', new LatLng(50.55623188005151, 9.680670929368217)),
    getLeisureTimeTourPoint('Schlosstheater', new LatLng(50.554499, 9.677807)),
    getLeisureTimeTourPoint('Vonderau Museum', new LatLng(50.551548, 9.678580)),
    getLeisureTimeTourPoint('Planetarium', new LatLng(50.551286, 9.679240)),
    getLeisureTimeTourPoint('Escape Room', new LatLng(50.550923, 9.680722)),
    getLeisureTimeTourPoint('S-Club', new LatLng(50.547424, 9.676260)),
    getLeisureTimeTourPoint('Block Barock', new LatLng(50.538169, 9.696781)),
  ];

  static List<TourPoint> TourPoints = [
    TourPoint(
        LatLng(50.560904, 9.670334),
        "Frauenberg Kloster",
        "Tagungskloster ",
        [
          "schöner Blick auf Fulda ",
          "Klostercafe",
          "Klostercafe",
          "Übernachtungsangebote für Einzelpersonen oder Gruppen",
          "öffentlich zugänglicher Garten"
        ],
        "lib/assets/images/Frauenberg.jpeg"),
    TourPoint(
        LatLng(50.555133, 9.675175),
        "Schlossgarten ",
        "grüne Oase mitten in der Stadt ",
        ["angrenzender Minigolfplatz", "aus der Barockzeit"],
        "lib/assets/images/Schlossgarten.jpeg"),
    TourPoint(
        LatLng(50.555130, 9.672069),
        "Michaelskirche",
        "eine der ältesten Kirchen in Deutschland",
        ["1200 Jahre alt "],
        "lib/assets/images/Michaelskirche.jpeg"),
    TourPoint(
        LatLng(50.554083, 9.672561),
        "Dom zu Fulda",
        "Wahrzeichen von Fulda",
        [
          "Wahrzeichen von Fulda",
          "Kathedrale des Bistums Fulda",
          "Grabeskirche des heiligen Bonifitus"
        ],
        "lib/assets/images/dom.jpeg"),
    TourPoint(
        LatLng(50.552718, 9.672903),
        "Hexenturm",
        "im 12. Jahrhundert erbaut",
        [
          "war erst ein Wächterturm, dann ein Frauengefängnis ",
          "14 Meter hoch"
        ],
        "lib/assets/images/Hexenturm.jpeg"),
    TourPoint(
        LatLng(50.5538906, 9.6756236),
        "Stadtschloss Fulda",
        "Sitz der Stadtverwaltung",
        [
          "historischen Räumlichkeiten, die besichtigt werden können (auch onlinemöglich)"
        ],
        "lib/assets/images/Stadtschloss.jpeg"),
    TourPoint(
        LatLng(50.5391352, 9.6686132),
        "Aueweiher",
        "Fuß- und Radwege ",
        [
          "viele Sport- und Erholungsmöglichkeiten ",
          "Umweltzentrum mit Biergarten"
        ],
        "lib/assets/images/AuenPark.jpeg"),
  ];
}
