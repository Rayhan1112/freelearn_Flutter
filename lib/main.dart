// ignore_for_file: unused_import, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:freelearn/MainPage.dart';
import 'package:freelearn/Screens/Login.dart';
import 'package:freelearn/Screens/SignUp.dart';
import 'package:freelearn/Screens/Splash_Screen.dart';
import 'MenuWidget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(
   MyApp()
   );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

