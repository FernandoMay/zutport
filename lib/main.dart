import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zutlemane/bottom.dart';
import 'package:zutlemane/utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zutlemane',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.light(
          primary: Style.primaryColor,
          secondary: Style.orangeColor,
          tertiary: Style.kakiColor,
          surface: Style.bgColor,
          error: const Color(0xFFba1a1a),
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onTertiary: Colors.white,
          onSurface: Style.textColor,
        ),
        scaffoldBackgroundColor: Style.bgColor,
        textTheme: GoogleFonts.interTextTheme(),
        appBarTheme: AppBarTheme(
          backgroundColor: Style.bgColor,
          elevation: 0,
          centerTitle: true,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: Style.primaryColor,
          unselectedItemColor: Color(0xFF9E9E9E),
          elevation: 10,
        ),
      ),
      home: const BottomBar(),
    );
  }
}
