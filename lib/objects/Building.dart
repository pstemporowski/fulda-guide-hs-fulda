import 'package:latlong2/latlong.dart';

class Building {
  String? name;
  int number;
  String? modelPath;
  List<String>? notes;
  LatLng position;

  Building(
      {required this.name,
      required this.number,
      required this.position,
      this.modelPath,
      this.notes});
}

class Buildings {
  static List<Building> list = [
    Building(
        number: 11,
        name: 'Mensa',
        modelPath: 'lib/assets/obs_objects/G_Mensa.glb',
        position: LatLng(50.565521, 9.686873),
        notes: [
          'geöffnet:',
          'Mo. – Fr.: 7.00 – 21.00 Uhr Sa.: 10.00 – 15.00 Uhr',
          'Cafeteria-Angebot:',
          'Mo. – Fr.: 7.30 – 17.00 Uhr (Thekenverkauf) | 7.00 – 7.30 Uhr und 17.00 – 21.00  Uhr (Selbstbedienung an Automaten) Sa.: 10.00 – 15.00 Uhr (Selbstbedienung an Automaten)',
          'Mittagessen:',
          'Mo. – Fr.: 11.15 – 14.00 Uhr Sa.: 12.00 – 14.00 Uhr',
          'Abendessen:',
          'Mo. – Fr.: 17.00 – 20.00 Uhr'
        ]),
    Building(
        number: 10,
        name: 'SSC',
        modelPath: 'lib/assets/obs_objects/G_SSC.glb',
        position: LatLng(50.5653132, 9.6844596),
        notes: ['Mo. - Fr.: 07.00 - 22.00 Uhr', 'Samstag: 08.00 - 17.00 Uhr']),
    Building(
        number: 12,
        name: 'Bibliothek',
        modelPath: 'lib/assets/obs_objects/G_Bib.glb',
        position: LatLng(50.5655132, 9.6768727)),
    Building(
        number: 21,
        name: 'Fachbereich Sozialwesen',
        modelPath: 'lib/assets/obs_objects/G_21_30_31.glb',
        position: LatLng(50.5656164, 9.6879955)),
    Building(
        number: 30,
        name: 'Fachbereich Elektro- und Informationstechnik',
        modelPath: 'lib/assets/obs_objects/G_21_30_31.glb',
        position: LatLng(50.5643495, 9.6861734)),
    Building(
        number: 31,
        name: 'Fachbereich LT und GW',
        modelPath: 'lib/assets/obs_objects/G_21_30_31.glb',
        position: LatLng(50.5653848, 9.688258)),
    Building(
        number: 22,
        name: 'Fachbereich SK',
        modelPath: 'lib/assets/obs_objects/G_22_20.glb',
        position: LatLng(50.5659526, 9.688084)),
    Building(
        number: 20,
        name: 'Seminarräume und Zentralverwaltung',
        modelPath: 'lib/assets/obs_objects/G_22_20.glb',
        position: LatLng(50.564953, 9.6853871)),
    Building(
        number: 46,
        name: 'Fachbereich AI und OE ',
        modelPath: 'lib/assets/obs_objects/G_46.glb',
        position: LatLng(50.5652195, 9.6841397)),
    Building(
        number: 34,
        name: 'Büroräume und Seminarräume',
        position: LatLng(50.562998, 9.686682)),
    Building(name: '32', position: LatLng(50.563761, 9.686383)),
    Building(name: '35', position: LatLng(50.5640289, 9.6850737)),
    Building(name: '33', position: LatLng(50.564214, 9.686230)),
    Building(name: '41', position: LatLng(50.5641175, 9.6851729)),
    Building(name: '40', position: LatLng(50.564664, 9.686139)),
    Building(name: '45', position: LatLng(50.564844, 9.685023)),
    Building(name: '51', position: LatLng(50.565042, 9.684591)),
    Building(name: '53', position: LatLng(50.565124, 9.682795)),
    Building(name: '54', position: LatLng(50.565382, 9.684109)),
    Building(name: '50', position: LatLng(50.565512, 9.684742)),
    Building(name: '53', position: LatLng(50.565124, 9.682795)),
    Building(name: '24', position: LatLng(50.567172, 9.688573)),
    Building(name: '26', position: LatLng(50.5670248, 9.688054)),
    Building(name: '25', position: LatLng(50.56431, 9.6854445)),
    Building(name: '42', position: LatLng(50.5638521, 9.6834159)),
  ];
}
