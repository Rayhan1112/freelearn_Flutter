import 'package:flutter/material.dart';
import 'package:freelearn/MenuWidget.dart';

class Web extends StatefulWidget {
  const Web({super.key});

  @override
  State<Web> createState() => _WebState();
}

class _WebState extends State<Web> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text("Web Development",style: TextStyle(
        color: Colors.white,
        fontSize: 22,
        fontWeight: FontWeight.w500)),
        leading: MenuWidget(),
      ),
      body: const Center(
        child: Text("Web Development Screen", style: TextStyle(fontSize: 31),),
      ),
    );
  }
}
