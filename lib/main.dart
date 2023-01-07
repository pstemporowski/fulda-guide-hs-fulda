import 'package:flutter/material.dart';
import 'package:fulda_guide/sandbox_screens/3dViewer_screen.dart';
import 'package:fulda_guide/sandbox_screens/splash_screen.dart';

void main() {
  runApp( MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreen());
  }

}





