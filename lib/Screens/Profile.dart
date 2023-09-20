import 'package:flutter/material.dart';

import '../MenuWidget.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          elevation: 5,
          title: const Text(
            "My Account",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
          leading: MenuWidget(),
        ),
        // ignore: avoid_unnecessary_containers
        body: Container(
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(children: [
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 10.0, right: 10.0, left: 10.0, bottom: 50),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1),
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 40,
                        child: Stack(children: [
                          Container(
                              margin: EdgeInsets.only(top: 10, left: 130),
                              child: Icon(
                                Icons.person,
                                size: 100,
                              )),
                          Container(
                              height: 95,
                              margin: const EdgeInsets.only(top: 100),
                              padding: const EdgeInsets.all(20),
                              child: TextFormField(
                                cursorColor: Colors.black,
                                decoration: const InputDecoration(
                                    fillColor: Colors.white24,
                                    filled: true,
                                    labelText: "Full Name",
                                    labelStyle: TextStyle(color: Colors.black),
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
                                cursorColor: Colors.black,
                                decoration: const InputDecoration(
                                    fillColor: Colors.white24,
                                    filled: true,
                                    labelText: 'Email Id',
                                    labelStyle: TextStyle(color: Colors.black),
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
                                cursorColor: Colors.black,
                                decoration: const InputDecoration(
                                    fillColor: Colors.white24,
                                    filled: true,
                                    labelText: 'Password',
                                    labelStyle: TextStyle(color: Colors.black),
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
                                cursorColor: Colors.black,
                                decoration: const InputDecoration(
                                    fillColor: Colors.white24,
                                    filled: true,
                                    labelText: 'College Name',
                                    labelStyle: TextStyle(color: Colors.black),
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
                                cursorColor: Colors.black,
                                decoration: const InputDecoration(
                                    fillColor: Colors.white24,
                                    filled: true,
                                    labelText: 'Deparment (eg: B-Tech, BCA)',
                                    labelStyle: TextStyle(color: Colors.black),
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
                                        borderRadius: BorderRadius.circular(5)),
                                    shadowColor: Colors.grey,
                                    elevation: 5,
                                    backgroundColor: Colors.greenAccent),
                                onPressed: () {},
                                child: const Text(
                                  "Submit",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black87),
                                )),
                          ),
                        ]),
                      ),
                    ),
                  ),
                ]))));
  }
}
