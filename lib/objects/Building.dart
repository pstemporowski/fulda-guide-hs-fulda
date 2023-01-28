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
        position: LatLng(50.5656164, 9.6879955),
        notes: ['Dekanatssekretariat Raum 204']
    ),
    Building(
        number: 30,
        name: 'Fachbereich Elektro- und Informationstechnik',
        modelPath: 'lib/assets/obs_objects/G_21_30_31.glb',
        position: LatLng(50.5643495, 9.6861734),
        notes: ['Dekanat (Raum 228)',
          '+49 661 9640-5800 oder -5802',
          '+49 171 3036463',
          'dekanat.et@et.hs-fulda.de']
    ),

    Building(
      number: 31,
      name: 'Fachbereich LT und GW',
      modelPath: 'lib/assets/obs_objects/G_21_30_31.glb',
      position: LatLng(50.5653848, 9.688258),
      notes: ['Dekanatssekretariat, Raum 101'],

    ),
    Building(
        number: 22,
        name: 'Fachbereich SK',
        modelPath: 'lib/assets/obs_objects/G_22_20.glb',
        position: LatLng(50.5659526, 9.688084),
        notes: ['Fachbereichssekretariat Raum 202']
    ),
    Building(
        number: 20,
        name: 'Seminarräume und Zentralverwaltung',
        modelPath: 'lib/assets/obs_objects/G_22_20.glb',
        position: LatLng(50.564953, 9.6853871),
        notes: ['Dekanat Raum 104']
    ),
    Building(
        number: 46,
        name: 'Fachbereich AI und OE ',
        modelPath: 'lib/assets/obs_objects/G_46.glb',
        position: LatLng(50.5652195, 9.6841397),
        notes: [
          'Sekretariat (Gebäude 46, Raum 329)',
          '+49 661 9640-3000',
          'dekanat.ai@informatik.hs-fulda.de'
        ]),
    Building(
        number: 34,
        name: 'Büroräume und Seminarräume',
        position: LatLng(50.562998, 9.686682)),
    //Ab hier LatLng
    Building(
        number: 32, name: 'Präsidium', position: LatLng(50.563761, 9.686383)),
    Building(
        number: 35,
        name: 'RIGL-Fulda',
        position: LatLng(50.5640289, 9.6850737)),
    Building(
        number: 33,
        name: 'Fachbereich ET und LT',
        position: LatLng(50.564214, 9.686230)),
    Building(
        number: 41,
        name: 'Zentralverwaltung',
        position: LatLng(50.5641175, 9.6851729)),
    Building(
        number: 40,
        name: 'Fachbereich OE',
        position: LatLng(50.564664, 9.686139)),
    Building(
        number: 45,
        name: 'Fachbereich SW und Sportzentrum',
        position: LatLng(50.564844, 9.685023)),
    Building(
        number: 51,
        name: 'Fachbereich AI',
        position: LatLng(50.565042, 9.684591)),
    Building(
        number: 53,
        name: 'Fachbereich GW und Hochschulsport',
        position: LatLng(50.565124, 9.682795)),
    Building(
        number: 54,
        name: 'Fachbereich GW',
        position: LatLng(50.565382, 9.684109)),
    Building(
        number: 50,
        name: 'Fachbereich LT',
        position: LatLng(50.565512, 9.684742)),
    Building(
        number: 53,
        name: 'Fachbereich GW',
        position: LatLng(50.565124, 9.682795)),
    Building(
        number: 24,
        name: 'Fachbereich SK und SW und GW',
        position: LatLng(50.567172, 9.688573)),
    Building(
        number: 26,
        name: 'Fachbereich GW und SW',
        position: LatLng(50.5670248, 9.688054)),
    Building(
        number: 25,
        name: 'Fachbereich GW',
        position: LatLng(50.56431, 9.6854445)),
    Building(
        number: 42,
        name: 'Zentralverwaltung',
        position: LatLng(50.5638521, 9.6834159)),
    Building(
        number: -1,
        name: 'Basketballplatz',
        position: LatLng(50.565931, 9.688185)),
    Building(
        number: -1,
        name: 'Halle 8',
        position: LatLng(50.564946, 9.684638)),
    Building(
        number: -1,
        name: 'Cafe Chaos',
        position: LatLng(50.565140, 9.685103)),
    Building(
        number: -1,
        name: 'Parkplätze',
        position: LatLng(50.566014, 9.683818)),
  ];

  static List<String> getBuildingsAutoComplete() {
    List<String> autoCompleteList = List<String>.empty(growable: true);
    for (var building in list) {
      if (building.number > 0) {
        autoCompleteList.add(building.number.toString() + ":" + building.name!);
      } else {
        autoCompleteList.add(building.name!);
      }

      if (building.notes != null)
        for (var item in building.notes!)
          autoCompleteList.add(building.name ?? '' + ':' + item);
    }
    return [];
  }

  static Building? getBuilding(String name) {
    print(name);
    return list.firstWhere((element) =>
    element.number.toString() == name.trim(), orElse: null);
  }
}
