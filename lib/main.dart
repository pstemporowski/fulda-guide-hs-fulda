import 'package:flutter/material.dart';
import 'package:fulda_guide/sandbox_screens/3dViewer_screen.dart';
import 'package:fulda_guide/sandbox_screens/splash_screen.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return MaterialApp(home: SplashScreen());
  }
}





