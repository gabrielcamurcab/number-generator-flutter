import 'package:flutter/material.dart';

import 'pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.blue,
          appBarTheme: const AppBarTheme(
              color: Colors.blue, foregroundColor: Colors.white)),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
