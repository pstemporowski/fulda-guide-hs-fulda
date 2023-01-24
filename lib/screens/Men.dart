import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './Home1.dart';
import 'package:adobe_xd/page_link.dart';
import './Mensaplan.dart';
import './Stundenplan.dart';
import './Campusplan.dart';
import './Suche.dart';
import './Hotspots.dart';
import './Anleitungen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Men extends StatelessWidget {
  Men({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff82a47d),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 104.0, end: 104.0),
            Pin(size: 157.0, start: 8.0),
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
            padding: EdgeInsets.fromLTRB(0.0, 111.0, 0.0, 0.0),
            child: SizedBox.expand(
                child: SvgPicture.string(
              _svg_q46b9e,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            )),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 208.0, 0.0, 0.0),
            child: Stack(
              children: <Widget>[
                SizedBox.expand(
                    child: SvgPicture.string(
                  _svg_i1sf8,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                )),
                GestureDetector(
                  onTap: () => {Navigator.pop(context)},
                  child: Pinned.fromPins(
                    Pin(size: 30.0, start: 10.0),
                    Pin(size: 30.0, start: 15),
                    child: Stack(
                      children: <Widget>[
                        SizedBox.expand(
                            child: SvgPicture.string(
                          _svg_i8inxr,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        )),
                        SizedBox.expand(
                            child: SvgPicture.string(
                          _svg_c9c47,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        )),
                      ],
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 47.0, end: 41.0),
                  Pin(size: 556.0, end: 55.0),
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: SizedBox(
                          width: 138.0,
                          height: 172.0,
                          child: PageLink(
                            links: [
                              PageLinkInfo(
                                pageBuilder: () => Mensaplan(),
                              ),
                            ],
                            child: Stack(
                              children: <Widget>[
                                Align(
                                  alignment: Alignment(0.014, 1.0),
                                  child: SizedBox(
                                    width: 67.0,
                                    height: 27.0,
                                    child: Text(
                                      'Mensa ',
                                      style: TextStyle(
                                        fontFamily: 'Segoe UI',
                                        fontSize: 20,
                                        color: const Color(0xffffffff),
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 34.0),
                                  child: Stack(
                                    children: <Widget>[
                                      Container(
                                        decoration: BoxDecoration(
                                          color: const Color(0xffffffff),
                                          borderRadius:
                                              BorderRadius.circular(46.0),
                                          border: Border.all(
                                              width: 1.0,
                                              color: const Color(0xff707070)),
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
                                        margin: EdgeInsets.fromLTRB(
                                            25.0, 16.0, 25.0, 13.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          width: 138.0,
                          height: 178.0,
                          child: PageLink(
                            links: [
                              PageLinkInfo(
                                pageBuilder: () => Stundenplan(),
                              ),
                            ],
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xffffffff),
                                    borderRadius: BorderRadius.circular(46.0),
                                    border: Border.all(
                                        width: 1.0,
                                        color: const Color(0xff707070)),
                                  ),
                                  margin:
                                      EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 40.0),
                                ),
                                Pinned.fromPins(
                                  Pin(start: 3.0, end: 3.0),
                                  Pin(size: 33.0, end: 0.0),
                                  child: Text(
                                    'Stundenplan',
                                    style: TextStyle(
                                      fontFamily: 'Segoe UI',
                                      fontSize: 20,
                                      color: const Color(0xffffffff),
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Pinned.fromPins(
                                  Pin(start: 22.0, end: 22.0),
                                  Pin(size: 103.0, start: 18.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: const AssetImage(
                                            'lib/assets/images/Stundenplan.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: SizedBox(
                          width: 148.0,
                          height: 178.0,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromPins(
                                Pin(start: 0.0, end: 0.0),
                                Pin(size: 33.0, end: 0.0),
                                child: Text(
                                  'Campusplan',
                                  style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    fontSize: 20,
                                    color: const Color(0xffffffff),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(start: 5.0, end: 5.0),
                                Pin(size: 138.0, start: 0.0),
                                child: PageLink(
                                  links: [
                                    PageLinkInfo(
                                      pageBuilder: () => Campusplan(),
                                    ),
                                  ],
                                  child: Stack(
                                    children: <Widget>[
                                      Container(
                                        decoration: BoxDecoration(
                                          color: const Color(0xffffffff),
                                          borderRadius:
                                              BorderRadius.circular(46.0),
                                          border: Border.all(
                                              width: 1.0,
                                              color: const Color(0xff707070)),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: const AssetImage(
                                                'lib/assets/images/Maps.png'),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        margin: EdgeInsets.fromLTRB(
                                            28.0, 13.0, 29.0, 13.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 138.0, end: 5.0),
                        Pin(size: 172.0, end: 0.0),
                        child: Stack(
                          children: <Widget>[
                            Align(
                              alignment: Alignment(0.014, 1.0),
                              child: SizedBox(
                                width: 67.0,
                                height: 27.0,
                                child: Text(
                                  'Suche',
                                  style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    fontSize: 20,
                                    color: const Color(0xffffffff),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 34.0),
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(46.0),
                                      border: Border.all(
                                          width: 1.0,
                                          color: const Color(0xff707070)),
                                    ),
                                  ),
                                  Transform.rotate(
                                    angle: 0.1396,
                                    child: PageLink(
                                      links: [
                                        PageLinkInfo(
                                          pageBuilder: () => Suche(),
                                        ),
                                      ],
                                      child: Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: const AssetImage(
                                                'lib/assets/images/Suche.png'),
                                            fit: BoxFit.fill,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        margin: EdgeInsets.fromLTRB(
                                            15.0, 17.1, 10.9, 26.4),
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
                        Pin(size: 138.0, end: 5.0),
                        Pin(size: 174.0, middle: 0.5026),
                        child: PageLink(
                          links: [
                            PageLinkInfo(
                              pageBuilder: () => Hotspots(),
                            ),
                          ],
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromPins(
                                Pin(start: 9.0, end: 9.0),
                                Pin(size: 27.0, end: 0.0),
                                child: Text(
                                  'Hotspots',
                                  style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    fontSize: 20,
                                    color: const Color(0xffffffff),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 36.0),
                                child: Stack(
                                  children: <Widget>[
                                    Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0xffffffff),
                                        borderRadius:
                                            BorderRadius.circular(46.0),
                                        border: Border.all(
                                            width: 1.0,
                                            color: const Color(0xff707070)),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: const AssetImage(
                                              'lib/assets/images/Hotspots.png'),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      margin: EdgeInsets.fromLTRB(
                                          15.0, 26.0, 15.0, 25.0),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 138.0, start: 0.0),
                        Pin(size: 171.0, end: 1.0),
                        child: PageLink(
                          links: [
                            PageLinkInfo(
                              pageBuilder: () => Anleitungen(),
                            ),
                          ],
                          child: Stack(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(46.0),
                                  border: Border.all(
                                      width: 1.0,
                                      color: const Color(0xff707070)),
                                ),
                                margin:
                                    EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 33.0),
                              ),
                              Pinned.fromPins(
                                Pin(start: 9.0, end: 9.0),
                                Pin(size: 27.0, end: 0.0),
                                child: Text(
                                  'Anleitungen',
                                  style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    fontSize: 20,
                                    color: const Color(0xffffffff),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 67.0, middle: 0.507),
                                Pin(size: 117.0, start: 10.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: const AssetImage(
                                          'lib/assets/images/Fragen.png'),
                                      fit: BoxFit.fill,
                                    ),
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
const String _svg_i8inxr =
    '<svg viewBox="32.0 254.5 30.0 30.0" ><path transform="translate(32.0, 254.5)" d="M 30 0 L 0 30" fill="none" stroke="#ffffff" stroke-width="10" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_c9c47 =
    '<svg viewBox="32.0 254.5 30.0 30.0" ><path transform="translate(32.0, 254.5)" d="M 0 0 L 30 30" fill="none" stroke="#ffffff" stroke-width="10" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_i1sf8 =
    '<svg viewBox="0.0 208.0 430.0 724.0" ><path transform="translate(-4809.22, -4.57)" d="M 4809.2158203125 233.7375640869141 L 4809.2158203125 936.571044921875 L 5239.2158203125 936.571044921875 L 5239.2158203125 233.7375640869141 C 5239.2158203125 233.7375640869141 5172.6201171875 269.4736938476562 5127.693359375 228.4006958007812 C 5086.48779296875 186.0606994628906 4951.3671875 244.4618072509766 4898.14404296875 223.3564453125 C 4844.9208984375 202.2510833740234 4809.2158203125 233.7375640869141 4809.2158203125 233.7375640869141 Z" fill="#2e5d29" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
