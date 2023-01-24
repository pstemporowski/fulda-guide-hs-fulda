import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:adobe_xd/page_link.dart';
import './Men.dart';

class Campusplan extends StatelessWidget {
  Campusplan({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff82a47d),
      body: Stack(
        children: [
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
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 111.0, 0.0, 0.0),
            child: Stack(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    SizedBox.expand(
                        child: SvgPicture.string(
                      _svg_grnki1,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 40, 15, 50),
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: const AssetImage(
                              'lib/assets/images/Campusplan.jpg'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 137.0, middle: 0.5017),
                  Pin(size: 139.0, end: -70.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xfcdedfde),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
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
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_grnki1 =
    '<svg viewBox="0.0 111.0 430.0 821.0" ><path transform="translate(-4809.22, -105.81)" d="M 4809.2158203125 235.9864654541016 L 4809.2158203125 1037.805908203125 L 5239.2158203125 1037.805908203125 L 5239.2158203125 258.1225891113281 C 5239.2158203125 258.1225891113281 5200.91162109375 302.3948059082031 5135.4228515625 266.7310791015625 C 5106.90185546875 253.0500183105469 5094.7890625 234.965576171875 5042.4404296875 227.2151031494141 C 5003.9365234375 225.0621948242188 4923.466796875 263.3840026855469 4866.3603515625 230.2291717529297 C 4809.25341796875 197.0743560791016 4809.2158203125 235.9864654541016 4809.2158203125 235.9864654541016 Z" fill="#407e39" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';

const String _svg_z5aio =
    '<svg viewBox="-330.3 -51.2 1075.5 1156.8" ><path transform="matrix(0.891007, -0.453991, 0.453991, 0.891007, -1749.98, -1801.14)" d="M 597.1998291015625 2682.60107421875 C 597.1998291015625 2682.60107421875 642.0293579101562 2594.6181640625 673.657958984375 2532.54345703125 C 677.9978637695312 2520.538330078125 699.818115234375 2476.70263671875 726.2552490234375 2521.6279296875 C 780.652587890625 2614.066650390625 891.6124267578125 2571.95947265625 940.8015747070312 2664.878173828125 C 989.99072265625 2757.796875 1055.4501953125 2730.8291015625 1055.4501953125 2730.8291015625 C 1055.4501953125 2730.8291015625 999.4692993164062 2838.25537109375 906.4913940429688 3021.88818359375 C 877.7711181640625 3078.32275390625 714.04150390625 3400.88134765625 701.5880126953125 3424.712158203125 C 588.2296142578125 3366.3310546875 629.24560546875 3392.224853515625 506.5472106933594 3324.3759765625 C 488.8075866699219 3314.596435546875 318.969482421875 3242.816650390625 318.6176452636719 3229.349365234375 C 335.1455688476562 3197.272705078125 384.6496276855469 3100.548095703125 435.5396423339844 2999.083251953125 C 490.2723388671875 2895.405029296875 597.1998291015625 2682.60107421875 597.1998291015625 2682.60107421875 Z" fill="#407e39" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
