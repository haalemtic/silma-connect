import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:silma_connect/views/apppages/homescreen.dart';
import 'package:silma_connect/views/apppages/roomview.dart';
import 'package:silma_connect/views/authentification-pages/checkingcodescreen.dart';

import 'package:silma_connect/views/authentification-pages/firstscreen.dart';

void main() {
  runApp(SilmaConnectApp());
}

class SilmaConnectApp extends StatelessWidget {
  const SilmaConnectApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FirstScreen(),
    );
  }
}
