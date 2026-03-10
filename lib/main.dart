import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoist/screens/navbar_screen.dart';
import 'package:todoist/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

final ThemeData kLightTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFFffffff)),
  textTheme: GoogleFonts.leagueSpartanTextTheme(),
);

final ThemeData kDarktheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF000000)),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: kLightTheme,
      darkTheme: kDarktheme,
      themeMode: ThemeMode.system,
      home: SplashScreen(),
    );
  }
}
