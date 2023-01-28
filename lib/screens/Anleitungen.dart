import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'Men.dart';
import './Home1.dart';
import 'package:adobe_xd/page_link.dart';
import './Anleitungenvalidieren.dart';
import './Anleitungenaufladen.dart';
import './Anleitungeneduroam.dart';
import './AnleitungenRechenzentrum.dart';
import './AnleitungenStudienbro.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Anleitungen extends StatelessWidget {
  Anleitungen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff82a47d),
      body: Center(
        child: Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 111.0, 0.0, 0.0),
              child: Stack(
                children: <Widget>[
                  SizedBox.expand(
                      child: SvgPicture.string(
                    _svg_q46b9e,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  )),
                ],
              ),
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
                            image:
                                const AssetImage('lib/assets/images/Logo.png'),
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
              Pin(size: 635.0, end: 96.0),
              child: Stack(
                children: <Widget>[
                  Pinned.fromPins(
                    Pin(start: 0.0, end: 0.0),
                    Pin(size: 48.0, start: 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff2e5d29),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24.0),
                          topRight: Radius.circular(24.0),
                        ),
                      ),
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 200.0, start: 85),
                    Pin(size: 43.0, start: 0),
                    child: Text(
                      'Anleitungen',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 30,
                        color: const Color(0xfff5f5f5),
                      ),
                      softWrap: false,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(27.0),
                        bottomLeft: Radius.circular(27.0),
                      ),
                    ),
                    margin: EdgeInsets.fromLTRB(0.0, 48.0, 0.0, 0.0),
                  ),
                ],
              ),
            ),
            Pinned.fromPins(
              Pin(size: 280.0, start: 54.0),
              Pin(size: 127.0, middle: 0.4062),
              child: Stack(
                children: <Widget>[
                  Pinned.fromPins(
                    Pin(start: 17.0, end: 0.0),
                    Pin(size: 43.0, start: 0.0),
                    child: Text(
                      'Studentenausweis',
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 30,
                        color: const Color(0xff000000),
                      ),
                      softWrap: false,
                    ),
                  ),
                  Align(
                    alignment: Alignment(-1.0, -0.079),
                    child: SizedBox(
                      height: 38.0,
                      child: Stack(
                        children: <Widget>[
                          Center(
                            child: Text(
                              'validieren',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Segoe UI',
                                fontSize: 23,
                                color: const Color(0xff707070),
                              ),
                              softWrap: false,
                            ),
                          ),
                          PageLink(
                            links: [
                              PageLinkInfo(
                                pageBuilder: () => Anleitungenvalidieren(),
                              ),
                            ],
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(19.0),
                                border: Border.all(
                                    width: 1.0, color: const Color(0xff707070)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: SizedBox(
                      height: 38.0,
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromPins(
                            Pin(size: 100.0, middle: 0.5),
                            Pin(start: 4.0, end: 3.0),
                            child: Text(
                              'aufladen',
                              style: TextStyle(
                                fontFamily: 'Segoe UI',
                                fontSize: 23,
                                color: const Color(0xff707070),
                              ),
                              softWrap: false,
                            ),
                          ),
                          PageLink(
                            links: [
                              PageLinkInfo(
                                pageBuilder: () => Anleitungenaufladen(),
                              ),
                            ],
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(19.0),
                                border: Border.all(
                                    width: 1.0, color: const Color(0xff707070)),
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
            Pinned.fromPins(
              Pin(size: 250.0, start: 54.0),
              Pin(size: 81.0, middle: 0.5476),
              child: Stack(
                children: <Widget>[
                  Pinned.fromPins(
                    Pin(start: 10.0, end: 0.0),
                    Pin(size: 43.0, start: 0.0),
                    child: Text(
                      'Internetzugang',
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 30,
                        color: const Color(0xff000000),
                      ),
                      softWrap: false,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: SizedBox(
                      height: 38.0,
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromPins(
                            Pin(size: 100.0, middle: 0.5),
                            Pin(start: 3.0, end: 4.0),
                            child: Text(
                              'eduroam',
                              style: TextStyle(
                                fontFamily: 'Segoe UI',
                                fontSize: 23,
                                color: const Color(0xff707070),
                              ),
                              softWrap: false,
                            ),
                          ),
                          PageLink(
                            links: [
                              PageLinkInfo(
                                pageBuilder: () => Anleitungeneduroam(),
                              ),
                            ],
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(19.0),
                                border: Border.all(
                                    width: 1.0, color: const Color(0xff707070)),
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
            Pinned.fromPins(
              Pin(size: 270.0, start: 54.0),
              Pin(size: 128.0, middle: 0.7114),
              child: Stack(
                children: <Widget>[
                  Pinned.fromPins(
                    Pin(start: 14.0, end: 0.0),
                    Pin(size: 43.0, start: 0.0),
                    child: Text(
                      'Ansprechpartner',
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 30,
                        color: const Color(0xff000000),
                      ),
                      softWrap: false,
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(start: 0.0, end: 33.0),
                    Pin(size: 38.0, middle: 0.4556),
                    child: Stack(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(17.0, 2.0, 17.0, 5.0),
                          child: SizedBox.expand(
                              child: Text(
                            'Rechenzentrum',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Segoe UI',
                              fontSize: 23,
                              color: const Color(0xff707070),
                            ),
                            softWrap: false,
                          )),
                        ),
                        PageLink(
                          links: [
                            PageLinkInfo(
                              pageBuilder: () => AnleitungenRechenzentrum(),
                            ),
                          ],
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(19.0),
                              border: Border.all(
                                  width: 1.0, color: const Color(0xff707070)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(start: 0.0, end: 33.0),
                    Pin(size: 38.0, end: 0.0),
                    child: PageLink(
                      links: [
                        PageLinkInfo(
                          pageBuilder: () => AnleitungenStudienbro(),
                        ),
                      ],
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromPins(
                            Pin(size: 150.0, middle: 0.4559),
                            Pin(start: 4.0, end: 3.0),
                            child: Text(
                              'Studienbüro',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Segoe UI',
                                fontSize: 23,
                                color: const Color(0xff707070),
                              ),
                              softWrap: false,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(19.0),
                              border: Border.all(
                                  width: 1.0, color: const Color(0xff707070)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const String _svg_q46b9e =
    '<svg viewBox="0.0 111.0 430.0 821.0" ><path transform="translate(-4809.22, -105.81)" d="M 4809.2158203125 235.9864654541016 L 4809.2158203125 1037.805908203125 L 5239.2158203125 1037.805908203125 L 5239.2158203125 258.1225891113281 C 5239.2158203125 258.1225891113281 5200.91162109375 302.3948059082031 5135.4228515625 266.7310791015625 C 5106.90185546875 253.0500183105469 5097.5078125 231.383544921875 5042.4404296875 227.2151031494141 C 5003.9365234375 225.0621948242188 4923.466796875 263.3840026855469 4866.3603515625 230.2291717529297 C 4809.25341796875 197.0743560791016 4809.2158203125 235.9864654541016 4809.2158203125 235.9864654541016 Z" fill="#407e39" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
