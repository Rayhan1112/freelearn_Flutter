// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:freelearn/MainPage.dart';
import 'package:freelearn/Screens/SignUp.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: must_be_immutable
class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _email = TextEditingController();
  final _password = TextEditingController();

 
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(AssetImage("assets/images/back.jpg"), context);
  }

  void SignIn() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString('Email', '${_email.text}');
    sharedPreferences.setString('Password', '${_password.text}');

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _email.text, password: _password.text);
      Get.offAll(() => MainPage(),
          transition: Transition.downToUp,
          duration: Duration(milliseconds: 1500));
    } on FirebaseAuthException catch (e) {
      Get.snackbar(
        "Error",
        "${e.message}",
        snackPosition: SnackPosition.BOTTOM,
        colorText: Colors.white,
        backgroundColor: Colors.red,
        margin: const EdgeInsets.only(bottom: 50, right: 10, left: 10),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
            width: double.infinity,
            height: 900,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/back.jpg"),
                  fit: BoxFit.cover),
            ),
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 200, left: 20),
                    child: Text(
                      "Login",
                      style:
                          TextStyle(fontSize: 41, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 270),
                      padding: const EdgeInsets.all(20),
                      child: TextFormField(
                        controller: _email,
                        cursorColor: Colors.black,
                        decoration: const InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(color: Colors.black),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.orange)),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.black))),
                      )),
                  Container(
                      margin: const EdgeInsets.only(top: 380),
                      padding: const EdgeInsets.all(20),
                      child: TextFormField(
                        controller: _password,
                        cursorColor: Colors.black,
                        decoration: const InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.black),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.orange)),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.black))),
                      )),
                  Container(
                    margin: const EdgeInsets.only(top: 540, left: 130),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            shadowColor: Colors.grey,
                            elevation: 5,
                            backgroundColor: Colors.greenAccent),
                        onPressed: () {
                          SignIn();
                        },
                        child: const Text(
                          "Submit",
                          style: TextStyle(fontSize: 18, color: Colors.black87),
                        )),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 650, left: 65),
                    child: ElevatedButton(
                      onPressed: () {
                        Get.offAll(() => SignUp(),
                            transition: Transition.downToUp,
                            duration: Duration(milliseconds: 1500));
                      },
                      child: const Text("Don't have Account? Create New",
                          style: TextStyle(fontSize: 16, color: Colors.white)),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
