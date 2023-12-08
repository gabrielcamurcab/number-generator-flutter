import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trilhaapp/pages/login_page.dart';

// import 'pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.blue,
          appBarTheme: AppBarTheme(
              color: const Color.fromARGB(255, 151, 71, 200),
              foregroundColor: Colors.white,
              titleTextStyle: GoogleFonts.roboto(fontSize: 20),),
          textTheme: GoogleFonts.robotoTextTheme()),
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}
