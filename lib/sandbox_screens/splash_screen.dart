import 'package:flutter/material.dart';
import 'package:fulda_guide/sandbox_screens/3dViewer_screen.dart';
import 'package:fulda_guide/sandbox_screens/guidetour_screens.dart';
import 'package:fulda_guide/screens/Home1.dart';
import 'package:video_player/video_player.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // video controller
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.asset(
      'lib/assets/Logoanimation.mp4',
    )
      ..initialize().then((_) {
        setState(() {});
      })
      ..setVolume(0.0);

    _playVideo();
  }

  void _playVideo() async {
    // playing video
    _controller.play();

    //add delay till video is complite
    await Future.delayed(const Duration(seconds: 4));

    // navigating to home screen
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return Home1();
    }));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: _controller.value.isInitialized
            ? Stack(
                children: [
                  SizedBox.expand(
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: SizedBox(
                        width: _controller.value.size?.width ?? 0,
                        height: _controller.value.size?.height ?? 0,
                        child: VideoPlayer(
                          _controller,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            : Stack(children: [
                SizedBox.expand(
                  child: Container(
                    color: Colors.black,
                  ),
                ),
              ]),
      ),
    );
  }
}
