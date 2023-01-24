import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:fulda_guide/objects/Components.dart';
import 'package:fulda_guide/sandbox_screens/guidetour_screens.dart';
import 'Sehenswurdigkeiten.dart';
import './Home1.dart';
import 'package:adobe_xd/page_link.dart';

import 'package:flutter_svg/flutter_svg.dart';

class Hotspots extends StatelessWidget {
  Hotspots({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff82a47d),
      body: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 111.0, 0.0, 0.0),
            child: SizedBox.expand(
                child: SvgPicture.string(
              _svg_q46b9e,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            )),
          ),
          Pinned.fromPins(
            Pin(start: 104.0, end: 104.0),
            Pin(size: 157.0, start: -8.0),
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
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 150, 0, 0),
            child: Column(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GuideTour(
                                  TourPoints: HotspotsList.TourPoints,
                                )),
                      )
                    },
                    child: Container(
                      child: Center(
                        child: Text(
                          "SEHENSWÜRDIGKEITEN",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage(
                          "lib/assets/images/dom.jpeg",
                        ),
                        fit: BoxFit.cover,
                      )),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GuideTour(
                                  TourPoints: HotspotsList.Restaurants,
                                )),
                      )
                    },
                    child: Container(
                      child: Center(
                        child: Text(
                          "RESTAURANTS",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage(
                          "lib/assets/images/restaurantIMG.jpg",
                        ),
                        fit: BoxFit.cover,
                      )),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GuideTour(
                                  TourPoints: HotspotsList.Bars,
                                )),
                      )
                    },
                    child: Container(
                      child: Center(
                        child: Text(
                          "BARS",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage(
                          "lib/assets/images/bar.jpg",
                        ),
                        fit: BoxFit.cover,
                      )),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GuideTour(
                                  TourPoints: HotspotsList.Leisure,
                                )),
                      )
                    },
                    child: Container(
                      child: Center(
                        child: Text(
                          "FREIZEIT",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage(
                          "lib/assets/images/freizeitIMG.jpg",
                        ),
                        fit: BoxFit.cover,
                      )),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_q46b9e =
    '<svg viewBox="0.0 111.0 430.0 821.0" ><path transform="translate(-4809.22, -105.81)" d="M 4809.2158203125 235.9864654541016 L 4809.2158203125 1037.805908203125 L 5239.2158203125 1037.805908203125 L 5239.2158203125 258.1225891113281 C 5239.2158203125 258.1225891113281 5200.91162109375 302.3948059082031 5135.4228515625 266.7310791015625 C 5106.90185546875 253.0500183105469 5097.5078125 231.383544921875 5042.4404296875 227.2151031494141 C 5003.9365234375 225.0621948242188 4923.466796875 263.3840026855469 4866.3603515625 230.2291717529297 C 4809.25341796875 197.0743560791016 4809.2158203125 235.9864654541016 4809.2158203125 235.9864654541016 Z" fill="#407e39" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_i1sf8 =
    '<svg viewBox="0.0 208.0 430.0 724.0" ><path transform="translate(-4809.22, -4.57)" d="M 4809.2158203125 233.7375640869141 L 4809.2158203125 936.571044921875 L 5239.2158203125 936.571044921875 L 5239.2158203125 233.7375640869141 C 5239.2158203125 233.7375640869141 5172.6201171875 269.4736938476562 5127.693359375 228.4006958007812 C 5086.48779296875 186.0606994628906 4951.3671875 244.4618072509766 4898.14404296875 223.3564453125 C 4844.9208984375 202.2510833740234 4809.2158203125 233.7375640869141 4809.2158203125 233.7375640869141 Z" fill="#2e5d29" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
