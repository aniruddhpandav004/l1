import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginscreenfirebase/firebase.dart';

class DataScreen extends StatefulWidget {
  const DataScreen({Key? key}) : super(key: key);

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("DashBord"),
          actions: [
            IconButton(
              onPressed: () {
                logout();
                Get.offNamed('home');
              },
              icon: Icon(Icons.logout),
            ),
          ],
        ),
      ),
    );
  }
}
