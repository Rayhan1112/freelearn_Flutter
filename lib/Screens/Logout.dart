import 'package:flutter/material.dart';
import 'package:freelearn/Screens/Login.dart';
import 'package:get/get.dart';

import '../MenuWidget.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Logout extends StatefulWidget {
  @override
  State<Logout> createState() => _LogoutState();
}

class _LogoutState extends State<Logout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text("Logout",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w500,
            )),
        leading: MenuWidget(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Logout Here",
              style: TextStyle(fontSize: 31),
            ),
            ElevatedButton(
                onPressed: () async {
                  final SharedPreferences sharedPreferences =
                      await SharedPreferences.getInstance();
                  sharedPreferences.clear();
                  Get.offAll(() => Login());
                },
                child: Text("Logout")),
          ],
        ),
      ),
    );
  }
}
