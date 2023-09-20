import 'package:flutter/material.dart';

import '../MenuWidget.dart';

class FeedBack extends StatefulWidget {

  @override
  State<FeedBack> createState() => _FeedBack();
}

class _FeedBack extends State<FeedBack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text("FeedBack",style: TextStyle(
        color: Colors.white,
        fontSize: 22,
        fontWeight: FontWeight.w500,)),
        leading: MenuWidget(),
      ),
      body: const Center(
        child: Text("Feedback Screen", style: TextStyle(fontSize: 31),),
      ),
    );
  }
}
