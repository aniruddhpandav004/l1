import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginscreenfirebase/firebase.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("InsertData"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: txtemail,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Email",
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: txtpassword,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Password",
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () async {
                  String msg = await singUp(txtemail.text, txtpassword.text);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("$msg"),
                    ),
                  );
                },
                child: Text("Sing Up"),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  String msg = await singUp(txtemail.text, txtpassword.text);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("$msg"),
                    ),
                  );
                  if(msg == "Success")
                    {
                      Get.offNamed('data');
                    }
                },
                child: Text("Sing Up"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
