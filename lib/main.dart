import 'package:flutter/material.dart';
import 'package:fulda_guide/sandbox_screens/3dViewer_screen.dart';
import 'package:fulda_guide/sandbox_screens/guidetour_screens.dart';
import 'package:fulda_guide/sandbox_screens/splash_screen.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:syncfusion_localizations/syncfusion_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

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
    return const MaterialApp(
      home: SplashScreen(),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        SfGlobalLocalizations.delegate
      ],
      supportedLocales: [
        const Locale('de'),
      ],
      locale: const Locale('de'),
    );
  }
}





