import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginscreenfirebase/dataScreen.dart';
import 'package:loginscreenfirebase/homeScreen.dart';
import 'package:loginscreenfirebase/spleshScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => SpleshScreen(),
        'home' : (context) => HomeScreen(),
        'data' : (context) => DataScreen(),
      },
    ),
  );
}
