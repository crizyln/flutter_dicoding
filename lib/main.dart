import 'package:flutter/material.dart'; // import package
import 'package:flutter_app/splashscreen.dart';
import 'dart:async';

Future<void> main() async {

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: SplashScreen(),
    ),
  );
}

