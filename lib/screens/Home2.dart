import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'Mensaplan.dart';
import './Home1.dart';
import 'package:adobe_xd/page_link.dart';
import './Men.dart';
import './Home3.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home2 extends StatelessWidget {
  Home2({
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
            child: Stack(
              children: <Widget>[
                SizedBox.expand(
                    child: SvgPicture.string(
                  _svg_grnki1,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                )),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 96.0, middle: 0.7763),
            child: Stack(
              children: <Widget>[
                SizedBox.expand(
                    child: SingleChildScrollView(
                  primary: false,
                  child: Text(
                    'Mensaplan\n',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 40,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 307.0, middle: 0.52),
            child: Stack(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment(1.0, 0.011),
                      child: PageLink(
                        links: [
                          PageLinkInfo(
                            pageBuilder: () => Home3(),
                          ),
                        ],
                        child: Container(
                          width: 34.0,
                          height: 34.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: const AssetImage(
                                  'lib/assets/images/winkel-rechts.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(-1.0, 0.011),
                      child: Transform.rotate(
                        angle: 3.1416,
                        child: PageLink(
                          links: [
                            PageLinkInfo(
                              pageBuilder: () => Home1(),
                            ),
                          ],
                          child: Container(
                            width: 34.0,
                            height: 34.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: const AssetImage(
                                    'lib/assets/images/winkel-rechts.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 187.0, middle: 0.5021),
                      Pin(start: 0.0, end: 0.0),
                      child: PageLink(
                        links: [
                          PageLinkInfo(
                            pageBuilder: () => Mensaplan(),
                          ),
                        ],
                        child: Stack(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                width: 17.0,
                                height: 17.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xff103d00),
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                  border: Border.all(
                                      width: 1.0,
                                      color: const Color(0xff707070)),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment(-0.341, 1.0),
                              child: Container(
                                width: 17.0,
                                height: 17.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xffb6d8bb),
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                  border: Border.all(
                                      width: 1.0,
                                      color: const Color(0xff707070)),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment(0.341, 1.0),
                              child: Container(
                                width: 17.0,
                                height: 17.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xffb6d8bb),
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                  border: Border.all(
                                      width: 1.0,
                                      color: const Color(0xff707070)),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: const AssetImage(
                                      'lib/assets/images/Mensa.png'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 38.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 222.0, middle: 0.5),
            Pin(size: 157.0, start: -8.0),
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const AssetImage('lib/assets/images/Logo.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 137.0, middle: 0.5017),
            Pin(size: 139.0, end: -70.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  pageBuilder: () => Men(),
                ),
              ],
              child: Stack(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xfcdedfde),
                          borderRadius: BorderRadius.all(
                              Radius.elliptical(9999.0, 9999.0)),
                        ),
                      ),
                    ],
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
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_grnki1 =
    '<svg viewBox="0.0 111.0 430.0 821.0" ><path transform="translate(-4809.22, -105.81)" d="M 4809.2158203125 235.9864654541016 L 4809.2158203125 1037.805908203125 L 5239.2158203125 1037.805908203125 L 5239.2158203125 258.1225891113281 C 5239.2158203125 258.1225891113281 5200.91162109375 302.3948059082031 5135.4228515625 266.7310791015625 C 5106.90185546875 253.0500183105469 5094.7890625 234.965576171875 5042.4404296875 227.2151031494141 C 5003.9365234375 225.0621948242188 4923.466796875 263.3840026855469 4866.3603515625 230.2291717529297 C 4809.25341796875 197.0743560791016 4809.2158203125 235.9864654541016 4809.2158203125 235.9864654541016 Z" fill="#407e39" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
