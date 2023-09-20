// ignore: depend_on_referenced_packages
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freelearn/MainPage.dart';
import 'package:freelearn/Screens/Login.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_database/firebase_database.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _name = TextEditingController();
  final _college = TextEditingController();
  final _department = TextEditingController();

  final DatabaseReference _databaseReference =
      FirebaseDatabase.instance.ref("User");
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(AssetImage("assets/images/signup1.jpg"), context);
  }

  void SignUp() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString('Email', '${_email.text}');
    sharedPreferences.setString('Password', '${_password.text}');
    sharedPreferences.setString('Name', _name.text);
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _email.text.toString().toLowerCase().trim(),
          password: _password.toString().trim());
      print("Completed");
      Get.snackbar("FreeLearn", 'Welcome',
          snackPosition: SnackPosition.BOTTOM,
          margin: EdgeInsets.all(40),
          colorText: Colors.black,
          backgroundColor: Colors.yellow);
      Get.offAll(() => MainPage());
    } on FirebaseAuthException catch (error) {
      Get.snackbar("Error", "${error.message}",
          backgroundColor: Colors.white, snackPosition: SnackPosition.BOTTOM);
    }
  }

  void addData() {
    _databaseReference.child(_name.text).push().set({
      'Name': _name.text,
      'College_Name': _college.text,
      'Department': _department.text
    }).then((value) {
      print('Data added successfully');
    }).catchError((error) {
      print('Failed to add data: $error');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
            width: double.infinity,
            height: 900,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/signup1.jpg"),
                  fit: BoxFit.cover),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 70, left: 20),
                    child: const Text(
                      "F r e e L e a r n",
                      style: TextStyle(
                          fontSize: 41,
                          color: Colors.white,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        color: Colors.white38,
                        shadowColor: Colors.cyan,
                        elevation: 40,
                        child: Stack(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 30, left: 15),
                              child: Text(
                                "Sign In",
                                style: TextStyle(
                                    fontSize: 41,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                            ),
                            Container(
                                height: 95,
                                margin: const EdgeInsets.only(top: 100),
                                padding: const EdgeInsets.all(20),
                                child: TextFormField(
                                  controller: _name,
                                  cursorColor: Colors.black,
                                  decoration: const InputDecoration(
                                      fillColor: Colors.white24,
                                      filled: true,
                                      labelText: "Full Name",
                                      labelStyle:
                                          TextStyle(color: Colors.black),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1, color: Colors.orange)),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1, color: Colors.black))),
                                )),
                            Container(
                                height: 95,
                                margin: const EdgeInsets.only(top: 180),
                                padding: const EdgeInsets.all(20),
                                child: TextFormField(
                                  controller: _email,
                                  cursorColor: Colors.black,
                                  decoration: const InputDecoration(
                                      fillColor: Colors.white24,
                                      filled: true,
                                      labelText: 'Email Id',
                                      labelStyle:
                                          TextStyle(color: Colors.black),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1, color: Colors.orange)),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1, color: Colors.black))),
                                )),
                            Container(
                                height: 95,
                                margin: const EdgeInsets.only(top: 260),
                                padding: const EdgeInsets.all(20),
                                child: TextFormField(
                                  controller: _password,
                                  cursorColor: Colors.black,
                                  decoration: const InputDecoration(
                                      fillColor: Colors.white24,
                                      filled: true,
                                      labelText: 'Password',
                                      labelStyle:
                                          TextStyle(color: Colors.black),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1, color: Colors.orange)),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1, color: Colors.black))),
                                )),
                            Container(
                                height: 95,
                                margin: const EdgeInsets.only(top: 340),
                                padding: const EdgeInsets.all(20),
                                child: TextFormField(
                                  controller: _college,
                                  cursorColor: Colors.black,
                                  decoration: const InputDecoration(
                                      fillColor: Colors.white24,
                                      filled: true,
                                      labelText: 'College Name',
                                      labelStyle:
                                          TextStyle(color: Colors.black),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1, color: Colors.orange)),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1, color: Colors.black))),
                                )),
                            Container(
                                height: 95,
                                margin: const EdgeInsets.only(top: 420),
                                padding: const EdgeInsets.all(20),
                                child: TextFormField(
                                  controller: _department,
                                  cursorColor: Colors.black,
                                  decoration: const InputDecoration(
                                      fillColor: Colors.white24,
                                      filled: true,
                                      labelText: 'Deparment (eg: B-Tech, BCA)',
                                      labelStyle:
                                          TextStyle(color: Colors.black),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1, color: Colors.orange)),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1, color: Colors.black))),
                                )),
                            Container(
                              margin: const EdgeInsets.only(
                                  top: 510, left: 130, bottom: 30),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      shadowColor: Colors.grey,
                                      elevation: 5,
                                      backgroundColor: Colors.greenAccent),
                                  onPressed: () {
                                    // SignUp();
                                    addData();
                                    SignUp();
                                  },
                                  child: const Text(
                                    "Submit",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.black87),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30, left: 20),
                    child: ElevatedButton(
                      onPressed: () {
                        // Get.toNamed(RouteClass.getLoginRoute());
                        Get.offAll(() => Login(),
                            transition: Transition.upToDown,
                            duration: Duration(milliseconds: 1500));
                      },
                      child: const Text("Already Have Account? Login ",
                          style: TextStyle(
                              fontSize: 16, color: CupertinoColors.white)),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
