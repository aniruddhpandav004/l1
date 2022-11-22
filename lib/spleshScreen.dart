import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginscreenfirebase/firebase.dart';

class SpleshScreen extends StatefulWidget {
  const SpleshScreen({Key? key}) : super(key: key);

  @override
  State<SpleshScreen> createState() => _SpleshScreenState();
}

class _SpleshScreenState extends State<SpleshScreen> {
  bool msg = false;

  @override
  void initState() {
    super.initState();
    msg = checkUser();
  }

  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 3),
      () => msg ? Get.offNamed('home') : Get.offNamed('data'),
    );
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: FlutterLogo(
            size: 150,
          ),
        ),
      ),
    );
  }
}
