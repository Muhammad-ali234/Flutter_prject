import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.notoSans().fontFamily,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      initialRoute: '/home',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
