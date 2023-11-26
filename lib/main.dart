import 'package:c_star/VIEW/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'C STAR Demo',
      theme: ThemeData(
          textTheme: GoogleFonts.acmeTextTheme(textTheme),
          appBarTheme: const AppBarTheme(backgroundColor: Color(0XFF050527))),
      home: const LoginPage(),
    );
  }
}
