import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Sehenswurdigkeiten extends StatelessWidget {
  Sehenswurdigkeiten({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff82a47d),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: -50.0, end: -59.0),
            Pin(size: 362.0, start: -21.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
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
          Padding(
            padding: EdgeInsets.fromLTRB(-343.1, 43.0, -383.1, -323.5),
            child: SizedBox.expand(
                child: SvgPicture.string(
              _svg_g678e,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            )),
          ),
          Pinned.fromPins(
            Pin(start: 27.0, end: 24.0),
            Pin(size: 185.0, middle: 0.4873),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(27.0),
                  bottomLeft: Radius.circular(27.0),
                ),
              ),
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
          Pinned.fromPins(
            Pin(size: 39.0, middle: 0.5013),
            Pin(size: 39.0, end: 12.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 54.0, start: 15.0),
            Pin(size: 54.0, start: 31.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 222.0, end: -59.0),
            Pin(size: 157.0, start: -21.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 49.0, end: 39.0),
            Pin(size: 108.0, middle: 0.4563),
            child: Text(
              '- Sitz der Stadtverwaltung\n- historischen Räumlichkeiten, die\nbesichtigt werden können (auch online\nmöglich)',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 20,
                color: const Color(0xff707070),
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 27.0, end: 24.0),
            Pin(size: 48.0, middle: 0.3575),
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
          Align(
            alignment: Alignment(0.0, -0.281),
            child: SizedBox(
              width: 132.0,
              height: 36.0,
              child: Text(
                'Stadtschloss',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 25,
                  color: const Color(0xffffffff),
                ),
                softWrap: false,
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.0, 0.274),
            child: Container(
              width: 150.0,
              height: 48.0,
              decoration: BoxDecoration(
                color: const Color(0xff2e5d29),
                borderRadius: BorderRadius.circular(24.0),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.003, 0.27),
            child: SizedBox(
              width: 49.0,
              height: 36.0,
              child: Text(
                'Liste',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 25,
                  color: const Color(0xffffffff),
                ),
                softWrap: false,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 144.0, middle: 0.5),
            Pin(size: 144.0, end: 124.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff82a47d),
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.0, 0.618),
            child: SizedBox(
              width: 88.0,
              height: 57.0,
              child: Text(
                'NEXT',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 40,
                  color: const Color(0xffffffff),
                ),
                softWrap: false,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_g678e =
    '<svg viewBox="-343.1 43.0 1156.3 1212.5" ><path transform="matrix(0.891007, -0.453991, 0.453991, 0.891007, -1749.98, -1676.89)" d="M 500.5000305175781 2682.1796875 C 500.5000305175781 2682.1796875 671.85791015625 2429.189208984375 726.2552490234375 2521.6279296875 C 780.652587890625 2614.066650390625 891.6124267578125 2571.95947265625 940.8015747070312 2664.878173828125 C 989.99072265625 2757.796875 1120.725952148438 2714.024169921875 1120.725952148438 2714.024169921875 C 1120.725952148438 2714.024169921875 850.5260620117188 3434.639404296875 735.7015380859375 3445.565673828125 C 620.8771362304688 3456.4921875 450.3565368652344 3327.995361328125 332.8514404296875 3263.21630859375 C 215.3464660644531 3198.437255859375 500.5000305175781 2682.1796875 500.5000305175781 2682.1796875 Z" fill="#407e39" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
