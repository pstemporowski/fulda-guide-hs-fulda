import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:fulda_guide/sandbox_screens/map_page.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import '../objects/Building.dart';
import './Home1.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Men.dart';

class Gebaeudeplan extends StatelessWidget {
  Gebaeudeplan({Key? key, required this.building}) : super(key: key);

  final Building building;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff82a47d),
      body: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 227.0, 0.0, 0.0),
            child: SizedBox.expand(
                child: SvgPicture.string(
              _svg_u4xic,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            )),
          ),
          Pinned.fromPins(
            Pin(size: 39.0, middle: 0.5013),
            Pin(size: 26.0, end: 13.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 3.0, start: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff000000),
                      borderRadius: BorderRadius.circular(2.0),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 3.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff000000),
                      borderRadius: BorderRadius.circular(2.0),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 3.0, middle: 0.5217),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff000000),
                      borderRadius: BorderRadius.circular(2.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 39.0, middle: 0.5013),
            Pin(size: 26.0, end: 13.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 3.0, start: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff000000),
                      borderRadius: BorderRadius.circular(2.0),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 3.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff000000),
                      borderRadius: BorderRadius.circular(2.0),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 3.0, middle: 0.5217),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff000000),
                      borderRadius: BorderRadius.circular(2.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 137.0, middle: 0.5017),
            Pin(size: 139.0, end: -70.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xfcdfdfdf),
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
              ),
            ),
          ),
          SizedBox(
            height: 180,
            width: double.infinity,
            child: getModel(building.modelPath),
          ),
          Pinned.fromPins(
            Pin(start: 27.0, end: 24.0),
            Pin(size: 686.0, end: -70.0),
            child: Stack(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 151.0),
                      child: Stack(
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xff2e5d29),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(24.0),
                                    topRight: Radius.circular(24.0),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  building.name ?? "",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    fontSize: 20,
                                    color: const Color(0xffffffff),
                                  ),
                                  softWrap: false,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0.0, 48.0, 0.0, 0.0),
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xffffffff),
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(21.0),
                                      bottomLeft: Radius.circular(21.0),
                                    ),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        building.number > 0
                                            ? 'Gebäudenummer: ' +
                                                building.number.toString()
                                            : "",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontFamily: 'Segoe UI',
                                          fontSize: 15,
                                          color: const Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Info',
                                      style: TextStyle(
                                        fontFamily: 'Segoe UI',
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: const Color(0xff000000),
                                      ),
                                    ),
                                    ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: building.notes != null
                                          ? building.notes!.length
                                          : 0,
                                      itemBuilder: (context, index) {
                                        return Text(
                                          building.notes![index],
                                          style: TextStyle(
                                            fontFamily: 'Segoe UI',
                                            fontSize: 15,
                                            color: const Color(0xff000000),
                                          ),
                                        );
                                      },
                                    ),
                                    Text(
                                      'Route',
                                      style: TextStyle(
                                        fontFamily: 'Segoe UI',
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: const Color(0xff000000),
                                      ),
                                    ),
                                    Expanded(
                                      child: GestureDetector(
                                          onTap: () => {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            MapPage(
                                                                targetPosition:
                                                                    building
                                                                        .position)))
                                              },
                                          child: MapPage(
                                            targetPosition: building.position,
                                          )),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment(-0.008, 1.0),
                      child: SizedBox(
                        width: 137.0,
                        height: 139.0,
                        child: PageLink(
                          links: [
                            PageLinkInfo(
                              pageBuilder: () => Men(),
                            ),
                          ],
                          child: Stack(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xfcdfdfdf),
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 39.0, middle: 0.4971),
                      Pin(size: 26.0, end: 83.0),
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromPins(
                            Pin(start: 0.0, end: 0.0),
                            Pin(size: 3.0, start: 0.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color(0xff000000),
                                borderRadius: BorderRadius.circular(2.0),
                              ),
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(start: 0.0, end: 0.0),
                            Pin(size: 3.0, end: 0.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color(0xff000000),
                                borderRadius: BorderRadius.circular(2.0),
                              ),
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(start: 0.0, end: 0.0),
                            Pin(size: 3.0, middle: 0.5217),
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color(0xff000000),
                                borderRadius: BorderRadius.circular(2.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget getModel(String? path) {
    if (path == null) {
      return drawLogo();
    } else {
      return ModelViewer(
        src: building.modelPath!,
        alt: "A 3D model of an astronaut",
        autoRotate: false,
        cameraControls: false,
        ar: true,
        arScale: ArScale.auto,
        arPlacement: ArPlacement.floor,
        arModes: ['scene-viewer', 'webxr', 'quick-look'],
        backgroundColor: Colors.transparent,
        cameraOrbit: "0deg 90deg 1m",
        autoPlay: true,
      );
    }
  }
}

Widget drawLogo() {
  return Pinned.fromPins(
    Pin(size: 222.0, end: -59.0),
    Pin(size: 157.0, start: -21.0),
    child: PageLink(
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
  );
}

const String _svg_u4xic =
    '<svg viewBox="0.0 227.0 430.0 705.0" ><path transform="translate(-4809.22, 10.14)" d="M 4809.2158203125 233.2840118408203 L 4809.2158203125 921.8621215820312 L 5239.2158203125 921.8621215820312 L 5239.2158203125 252.2938537597656 C 5239.2158203125 252.2938537597656 5200.91162109375 290.3134765625 5135.4228515625 259.6865234375 C 5106.90185546875 247.9376678466797 5097.5078125 229.3311614990234 5042.4404296875 225.7514190673828 C 5003.9365234375 223.9025726318359 4923.466796875 256.8122253417969 4866.3603515625 228.3398132324219 C 4809.25341796875 199.8674621582031 4809.2158203125 233.2840118408203 4809.2158203125 233.2840118408203 Z" fill="#407e39" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
