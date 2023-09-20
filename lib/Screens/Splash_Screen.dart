import 'package:flutter/material.dart';
import 'package:freelearn/MainPage.dart';
import 'package:freelearn/Screens/Login.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var email;
  late VideoPlayerController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = VideoPlayerController.asset("assets/images/FL.mp4")
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {
          _controller.play();
        });
      });

    getValid().whenComplete(() async {
      if (email == null) {
        Get.offAll(Login());
      } else {
        await Future.delayed(Duration(seconds: 4));
        Get.offAll(MainPage(), transition: Transition.fade);
      }
    });
  }

  Future getValid() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    var getMaiil = sharedPreferences.getString('Email');
    setState(() {
      email = getMaiil;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(color: Colors.black, child: content()));
  }

  Widget content() {
    return Center(
      child: Container(
        color: Colors.black,
        width: 450,
        height: 720,
        child: _controller.value.isInitialized
            ? VideoPlayer(_controller)
            : Container(
                color: Colors.black,
              ),
      ),
    );
  }

  @override
  void Dispose() {
    super.dispose();
    _controller.dispose();
  }
}
