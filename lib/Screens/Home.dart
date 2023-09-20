import 'package:flutter/material.dart';

import '../MenuWidget.dart';
import 'package:get/get.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _scroll = ScrollController();
  var _scroll1 = ScrollController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          elevation: 10,
          title: const Text(
            "Home",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          leading: MenuWidget(),
        ),
        body: Container(
          child: SingleChildScrollView(
              child: Column(children: [
//------------------------------------------------ First Row---------------------------------------------------------------------
            SingleChildScrollView(
              controller: _scroll,
              scrollDirection: Axis.horizontal,
              child: Container(
                margin: const EdgeInsets.only(top: 1),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: Column(children: [
                        const Text(
                          "Don't no Coding Swipe left",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        const Text("And Start with Basics",
                            style: TextStyle(fontWeight: FontWeight.w500)),
                        const SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            _scroll.animateTo(
                              200.0, // The desired scroll position
                              duration: const Duration(
                                  milliseconds:
                                      500), // Duration of the scrolling animation
                              curve: Curves.easeInOut, // Animation curve
                            );
                          },
                          child: const Icon(
                            Icons.arrow_circle_right_outlined,
                            size: 30,
                          ),
                        )
                      ]),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 30, top: 60, bottom: 10),
                      child: Card(
                        elevation: 20,
                        shadowColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(width: 00),
                            borderRadius: BorderRadius.circular(10)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    'assets/drawable/c.png',
                                    height: 107,
                                    width: 160,
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.all(10),
                                  child: const Text(
                                    "C \nProgramming \nBasic to Advance",
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w900),
                                  ),
                                )
                              ]),
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 30, top: 30, bottom: 10),
                      child: Card(
                        elevation: 20,
                        shadowColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(width: 00),
                            borderRadius: BorderRadius.circular(10)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    'assets/drawable/cpp.png',
                                    height: 107,
                                    width: 160,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(10),
                                  child: const Text(
                                    "C++ \nProgramming \nZero to Hero",
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w900),
                                  ),
                                )
                              ]),
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 30, top: 30, bottom: 10),
                      child: Card(
                        elevation: 20,
                        shadowColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(width: 00),
                            borderRadius: BorderRadius.circular(10)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    'assets/drawable/java.png',
                                    height: 107,
                                    width: 160,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(10),
                                  child: const Text(
                                    "Core Java \nProgramming \nFrom Sctrach",
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w900),
                                  ),
                                )
                              ]),
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 30, top: 30, bottom: 10),
                      child: Card(
                        elevation: 20,
                        shadowColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(width: 00),
                            borderRadius: BorderRadius.circular(10)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, right: 10, left: 10),
                                  child: Image.asset(
                                    'assets/drawable/adjava.png',
                                    height: 145,
                                    width: 160,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(10),
                                  child: const Text(
                                    "Advance Java\nProgramming ",
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w900),
                                  ),
                                )
                              ]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
//------------------------------------------------ Second Row---------------------------------------------------------------------

            SingleChildScrollView(
              controller: _scroll1,
              scrollDirection: Axis.horizontal,
              child: Container(
                margin: const EdgeInsets.only(top: 1),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: Column(children: [
                        const Text(
                          "Don't no Coding Swipe left",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        const Text("And Start with Basic",
                            style: TextStyle(fontWeight: FontWeight.w500)),
                        const SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            _scroll1.animateTo(
                              200.0, // The desired scroll position
                              duration: const Duration(
                                  milliseconds:
                                      500), // Duration of the scrolling animation
                              curve: Curves.easeIn, // Animation curve
                            );
                          },
                          child: const Icon(
                            Icons.arrow_circle_right_outlined,
                            size: 30,
                          ),
                        )
                      ]),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 30, top: 30, bottom: 10),
                      child: Card(
                        elevation: 20,
                        shadowColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(width: 00),
                            borderRadius: BorderRadius.circular(10)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/drawable/android.jpg',
                                  height: 107,
                                  width: 260,
                                  fit: BoxFit.cover,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.all(10),
                                  child: const Text(
                                    "Android Development \nfor Beginner",
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w900),
                                  ),
                                )
                              ]),
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 30, top: 30, bottom: 10),
                      child: Card(
                        elevation: 20,
                        shadowColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(width: 00),
                            borderRadius: BorderRadius.circular(10)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/drawable/py.jpg',
                                  height: 107,
                                  width: 260,
                                  fit: BoxFit.cover,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.all(10),
                                  child: const Text(
                                    "Python \nProgramming Course",
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w900),
                                  ),
                                )
                              ]),
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 30, top: 30, bottom: 10),
                      child: Card(
                        elevation: 20,
                        shadowColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(width: 00),
                            borderRadius: BorderRadius.circular(10)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/drawable/hacking.jpg',
                                  height: 107,
                                  width: 260,
                                  fit: BoxFit.cover,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.only(
                                      right: 10, left: 10, bottom: 22, top: 22),
                                  child: const Text(
                                    "Learn Ethical Hacking",
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w900),
                                  ),
                                )
                              ]),
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 30, top: 30, bottom: 10),
                      child: Card(
                        elevation: 20,
                        shadowColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(width: 00),
                            borderRadius: BorderRadius.circular(10)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/drawable/hardware.jpg',
                                  height: 107,
                                  width: 260,
                                  fit: BoxFit.cover,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.only(
                                      right: 10, left: 10, bottom: 22, top: 22),
                                  child: const Text(
                                    "Computer Hardware",
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w900),
                                  ),
                                )
                              ]),
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 30, top: 30, bottom: 10),
                      child: Card(
                        elevation: 20,
                        shadowColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(width: 00),
                            borderRadius: BorderRadius.circular(10)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/drawable/network.jpg',
                                  height: 108,
                                  width: 260,
                                  fit: BoxFit.cover,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.all(10),
                                  child: const Text(
                                    "Computer Networking \nCourse",
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w900),
                                  ),
                                )
                              ]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //------------------------------------------------ Second Row---------------------------------------------------------------------

            SingleChildScrollView(
              controller: _scroll1,
              scrollDirection: Axis.horizontal,
              child: Container(
                margin: const EdgeInsets.only(top: 1),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: Column(children: [
                        const Text(
                          "Don't no Coding Swipe left",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        const Text("And Start with Basi",
                            style: TextStyle(fontWeight: FontWeight.w500)),
                        const SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            _scroll1.animateTo(
                              200.0, // The desired scroll position
                              duration: const Duration(
                                  milliseconds:
                                      500), // Duration of the scrolling animation
                              curve: Curves.easeIn, // Animation curve
                            );
                          },
                          child: const Icon(
                            Icons.arrow_circle_right_outlined,
                            size: 30,
                          ),
                        )
                      ]),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 30, top: 30, bottom: 10),
                      child: Card(
                        elevation: 20,
                        shadowColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(width: 00),
                            borderRadius: BorderRadius.circular(10)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/drawable/android.jpg',
                                  height: 107,
                                  width: 260,
                                  fit: BoxFit.cover,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.all(10),
                                  child: const Text(
                                    "Android Development \nfor Beginner",
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w900),
                                  ),
                                )
                              ]),
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 30, top: 30, bottom: 10),
                      child: Card(
                        elevation: 20,
                        shadowColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(width: 00),
                            borderRadius: BorderRadius.circular(10)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/drawable/py.jpg',
                                  height: 107,
                                  width: 260,
                                  fit: BoxFit.cover,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.all(10),
                                  child: const Text(
                                    "Python \nProgramming Course",
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w900),
                                  ),
                                )
                              ]),
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 30, top: 30, bottom: 10),
                      child: Card(
                        elevation: 20,
                        shadowColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(width: 00),
                            borderRadius: BorderRadius.circular(10)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/drawable/hacking.jpg',
                                  height: 107,
                                  width: 260,
                                  fit: BoxFit.cover,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.only(
                                      right: 10, left: 10, bottom: 22, top: 22),
                                  child: const Text(
                                    "Learn Ethical Hacking",
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w900),
                                  ),
                                )
                              ]),
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 30, top: 30, bottom: 10),
                      child: Card(
                        elevation: 20,
                        shadowColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(width: 00),
                            borderRadius: BorderRadius.circular(10)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/drawable/hardware.jpg',
                                  height: 107,
                                  width: 260,
                                  fit: BoxFit.cover,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.only(
                                      right: 10, left: 10, bottom: 22, top: 22),
                                  child: const Text(
                                    "Computer Hardware",
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w900),
                                  ),
                                )
                              ]),
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 30, top: 30, bottom: 10),
                      child: Card(
                        elevation: 20,
                        shadowColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(width: 00),
                            borderRadius: BorderRadius.circular(10)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/drawable/network.jpg',
                                  height: 108,
                                  width: 260,
                                  fit: BoxFit.cover,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.all(10),
                                  child: const Text(
                                    "Computer Networking \nCourse",
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w900),
                                  ),
                                )
                              ]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                            left: 30, top: 30, bottom: 10),
                        child: Card(
                          elevation: 20,
                          shadowColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(width: 00),
                              borderRadius: BorderRadius.circular(10)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/drawable/network.jpg',
                                    height: 108,
                                    width: 260,
                                    fit: BoxFit.cover,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    margin: const EdgeInsets.all(10),
                                    child: const Text(
                                      "Computer Networking \nCourse",
                                      style: TextStyle(
                                          fontSize: 21,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  )
                                ]),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            left: 30, top: 30, bottom: 10),
                        child: Card(
                          elevation: 20,
                          shadowColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(width: 00),
                              borderRadius: BorderRadius.circular(10)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/drawable/network.jpg',
                                    height: 108,
                                    width: 260,
                                    fit: BoxFit.cover,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    margin: const EdgeInsets.all(10),
                                    child: const Text(
                                      "Computer Networking \nCourse",
                                      style: TextStyle(
                                          fontSize: 21,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  )
                                ]),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 21,
                    color: Colors.amberAccent,
                  ),
                  //-----------------------------2-1 row-------------------------------------------------
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                            left: 30, top: 30, bottom: 10),
                        child: Card(
                          elevation: 20,
                          shadowColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(width: 00),
                              borderRadius: BorderRadius.circular(10)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/drawable/network.jpg',
                                    height: 108,
                                    width: 260,
                                    fit: BoxFit.cover,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    margin: const EdgeInsets.all(10),
                                    child: const Text(
                                      "Computer Networking \nCourse",
                                      style: TextStyle(
                                          fontSize: 21,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  )
                                ]),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            left: 30, top: 30, bottom: 10),
                        child: Card(
                          elevation: 20,
                          shadowColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(width: 00),
                              borderRadius: BorderRadius.circular(10)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/drawable/network.jpg',
                                    height: 108,
                                    width: 260,
                                    fit: BoxFit.cover,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    margin: const EdgeInsets.all(10),
                                    child: const Text(
                                      "Computer Networking \nCourse",
                                      style: TextStyle(
                                          fontSize: 21,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  )
                                ]),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                            left: 30, top: 30, bottom: 10),
                        child: Card(
                          elevation: 20,
                          shadowColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(width: 00),
                              borderRadius: BorderRadius.circular(10)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/drawable/network.jpg',
                                    height: 108,
                                    width: 260,
                                    fit: BoxFit.cover,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    margin: const EdgeInsets.all(10),
                                    child: const Text(
                                      "Computer Networking \nCourse",
                                      style: TextStyle(
                                          fontSize: 21,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  )
                                ]),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            left: 30, top: 30, bottom: 10),
                        child: Card(
                          elevation: 20,
                          shadowColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(width: 00),
                              borderRadius: BorderRadius.circular(10)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/drawable/network.jpg',
                                    height: 108,
                                    width: 260,
                                    fit: BoxFit.cover,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    margin: const EdgeInsets.all(10),
                                    child: const Text(
                                      "Computer Networking \nCourse",
                                      style: TextStyle(
                                          fontSize: 21,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  )
                                ]),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ] //childrens

                  )),
        ),
      ),
    );
  }
}
