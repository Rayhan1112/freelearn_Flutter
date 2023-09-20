// ignore_for_file: unused_import, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:freelearn/MenuWidget.dart';
import 'package:url_launcher/url_launcher.dart';

class Certification extends StatelessWidget {
  Certification({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text(
          "Earn Free Certificate",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: MenuWidget(),
      ),
      body: Container(
            color: Colors.white,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 20, top: 30),
                      child: Card(
                        elevation: 20,
                        shadowColor: Colors.yellow,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(width: 00),
                            borderRadius: BorderRadius.circular(10)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/drawable/cjava.jpg',
                            height: 177,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20, top: 10),
                      child: Card(
                        elevation: 20,
                        shadowColor: Colors.yellow,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(width: 00),
                            borderRadius: BorderRadius.circular(10)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/drawable/iot.jpg',
                            height: 130,
                            width: 320,
                          ),
                        ),
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.only(left: 20, top: 10),
                        child: Card(
                          elevation: 20,
                          shadowColor: Colors.yellow,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(width: 00),
                              borderRadius: BorderRadius.circular(10)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/drawable/cpython.jpg',
                              height: 150,
                            ),
                          ),
                        )),
                    Container(
                      margin: const EdgeInsets.only(left: 20, top: 10),
                      child: Card(
                          elevation: 20,
                          color: Colors.white,
                          shadowColor: Colors.yellow,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(width: 00),
                              borderRadius: BorderRadius.circular(10)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/drawable/crobotic.jpg',
                              height: 135,
                            ),
                          )),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20, top: 10),
                      child: Card(
                        elevation: 20,
                        shadowColor: Colors.yellow,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(width: 00),
                            borderRadius: BorderRadius.circular(10)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/drawable/csql.jpg',
                            height: 115,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20, top: 10),
                      child: Card(
                        elevation: 20,
                        shadowColor: Colors.yellow,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(width: 00),
                            borderRadius: BorderRadius.circular(10)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/drawable/flutter.jpg',
                            height: 140,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 20, top: 10, bottom: 50),
                      child: Card(
                        elevation: 20,
                        shadowColor: Colors.yellow,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(width: 00),
                            borderRadius: BorderRadius.circular(10)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/drawable/fullstack.jpg',
                            height: 125,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )),
      );
  }

  
}
