import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'Campusplan.dart';
import 'Men.dart';
import 'Stundenplan.dart';
import './Home1.dart';
import 'package:adobe_xd/page_link.dart';
import './Essen.dart';
import './Anleitungenvalidieren.dart';
import './Hotspots.dart';
import './Kneipen.dart';
import './Freizeit.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Suche extends StatelessWidget {
  Suche({
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
            Pin(size: 222.0, middle: 0.5),
            Pin(start: -8.0, end: -70.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 157.0, start: 0.0),
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
                Align(
                  alignment: Alignment(0.012, 1.0),
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
                          Align(
                            alignment: Alignment(0.0, -0.469),
                            child: SizedBox(
                              width: 39.0,
                              height: 26.0,
                              child: Stack(
                                children: <Widget>[
                                  Pinned.fromPins(
                                    Pin(start: 0.0, end: 0.0),
                                    Pin(size: 3.0, start: 0.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0xff000000),
                                        borderRadius:
                                            BorderRadius.circular(2.0),
                                      ),
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(start: 0.0, end: 0.0),
                                    Pin(size: 3.0, end: 0.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0xff000000),
                                        borderRadius:
                                            BorderRadius.circular(2.0),
                                      ),
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(start: 0.0, end: 0.0),
                                    Pin(size: 3.0, middle: 0.5217),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0xff000000),
                                        borderRadius:
                                            BorderRadius.circular(2.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 26.0, end: 25.0),
            Pin(size: 509.0, middle: 0.4752),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 160.0, start: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 48.0, start: 0.0),
                        child: Stack(
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
                            Pinned.fromPins(
                              Pin(size: 77.0, middle: 0.5),
                              Pin(start: 5.0, end: 0.0),
                              child: Text(
                                'Suche',
                                style: TextStyle(
                                  fontFamily: 'Source Sans Pro',
                                  fontSize: 30,
                                  color: const Color(0xfff5f5f5),
                                ),
                                softWrap: false,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 48.0, 0.0, 0.0),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                color: const Color(0xffffffff),
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(27.0),
                                  bottomLeft: Radius.circular(27.0),
                                ),
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 192.0, middle: 0.4973),
                              Pin(size: 31.0, start: 15.0),
                              child: Text(
                                'wonach suchst du?',
                                style: TextStyle(
                                  fontFamily: 'Segoe UI',
                                  fontSize: 23,
                                  color: const Color(0xff707070),
                                ),
                                softWrap: false,
                              ),
                            ),
                            Align(
                              alignment: Alignment(-0.031, 0.455),
                              child: Container(
                                width: 249.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xffececec),
                                  border: Border.all(
                                      width: 1.0,
                                      color: const Color(0xff707070)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 284.0, end: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xabffffff),
                          borderRadius: BorderRadius.circular(26.0),
                          border: Border.all(
                              width: 1.0, color: const Color(0xff707070)),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 29.0, end: 27.0),
                        Pin(size: 62.0, start: 18.0),
                        child: Text(
                          'Vorschläge:\n',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 23,
                            color: const Color(0xff707070),
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 40.0, end: 46.0),
                        Pin(size: 35.0, middle: 0.3557),
                        child: PageLink(
                          links: [
                            PageLinkInfo(
                              pageBuilder: () => Anleitungenvalidieren(),
                            ),
                          ],
                          child: Text(
                            'Studentenausweis validieren',
                            style: TextStyle(
                              fontFamily: 'Segoe UI',
                              fontSize: 22,
                              color: const Color(0xff707070),
                            ),
                            softWrap: false,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment(-0.003, 0.036),
                        child: SizedBox(
                          width: 92.0,
                          height: 31.0,
                          child: PageLink(
                            links: [
                              PageLinkInfo(
                                pageBuilder: () => Hotspots(),
                              ),
                            ],
                            child: Text(
                              'Hotspots',
                              style: TextStyle(
                                fontFamily: 'Segoe UI',
                                fontSize: 23,
                                color: const Color(0xff707070),
                              ),
                              softWrap: false,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment(-0.004, 0.36),
                        child: SizedBox(
                          width: 128.0,
                          height: 31.0,
                          child: PageLink(
                            links: [
                              PageLinkInfo(
                                pageBuilder: () => Stundenplan(),
                              ),
                            ],
                            child: Text(
                              'Stundenplan',
                              style: TextStyle(
                                fontFamily: 'Segoe UI',
                                fontSize: 23,
                                color: const Color(0xff707070),
                              ),
                              softWrap: false,
                            ),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 126.0, middle: 0.498),
                        Pin(size: 31.0, end: 40.0),
                        child: PageLink(
                          links: [
                            PageLinkInfo(
                              pageBuilder: () => Campusplan(),
                            ),
                          ],
                          child: Text(
                            'Campusplan',
                            style: TextStyle(
                              fontFamily: 'Segoe UI',
                              fontSize: 23,
                              color: const Color(0xff707070),
                            ),
                            softWrap: false,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
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
