import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:freelearn/Menu.dart';
import 'package:freelearn/Screens/Feedback.dart';
import 'package:freelearn/Screens/Logout.dart';
import 'package:freelearn/Screens/Profile.dart';
import 'package:freelearn/Screens/Home.dart';
import 'package:freelearn/Screens/WebDevelopement.dart';
import 'package:freelearn/menu_item.dart';
import 'Screens/Certification.dart';
import 'package:get/get.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  MenuItem currentItem = MenuItems.home;

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: ZoomDrawer(
            borderRadius: 24.0,
            angle: 0.0,
            slideWidth: 240,
            style: DrawerStyle.defaultStyle,
            menuBackgroundColor: Colors.blueGrey,
            menuScreen: Builder(
                builder: (context) => Menu(
                    currentItem: currentItem,
                    onSelectedItem: (item) {
                      setState(() => currentItem = item);
                      ZoomDrawer.of(context)!.close();
                    })),
            mainScreen: getScreen()),
      );

  Widget getScreen() {
    switch (currentItem) {
      case MenuItems.wb:
        return const Web();
      case MenuItems.profile:
        return const Profile();
      case MenuItems.home:
        return const Home();
      case MenuItems.logout:
        return Logout();
      case MenuItems.feedback:
        return FeedBack();
      case MenuItems.certificate:
        return Certification();
      default:
        return MainPage();
    }
  }
}
