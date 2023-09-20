import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'menu_item.dart';

// ignore: depend_on_referenced_packages
import 'package:shared_preferences/shared_preferences.dart';
// ignore: depend_on_referenced_packages
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:get/get.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';

class MenuItems {
  static const home = MenuItem('Home', Icons.home);
  static const certificate = MenuItem('Certificate', Icons.archive);
  static const feedback = MenuItem('FeedBack', Icons.feedback);
  static const logout = MenuItem('Logout', Icons.logout);
  static const profile = MenuItem('Profile', Icons.person);
  static const wb = MenuItem('Web Development', Icons.web);

  static const all = <MenuItem>[
    profile,
    home,
    wb,
    certificate,
    feedback,
    logout,
  ];
}

class Menu extends StatefulWidget {
  final MenuItem currentItem;
  final ValueChanged<MenuItem> onSelectedItem;

  Menu({
    Key? key,
    required this.currentItem,
    required this.onSelectedItem,
  }) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  File? image;
  String? myImagePath;

  var newmail, newname;
  DatabaseReference ref = FirebaseDatabase.instance.ref();
  void initState() {
    // TODO: implement initState
    super.initState();
    getValid();
  }

  Future getValid() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    var getMaiil = sharedPreferences.getString('Email');
    var getUser = sharedPreferences.get('Name');
    setState(() {
      newmail = getMaiil;
      newname = getUser;
    });
  }

  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;
      final imageTemp = File(image.path);
      final SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      sharedPreferences.setString('path', '${imageTemp}');
      var getMa = sharedPreferences.getString('path');
      setState(() {
        this.image = imageTemp;
      });
    } on PlatformException catch (e) {
      Get.snackbar("Something Went Wrong", "${e.message}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueGrey,
          body: SingleChildScrollView(
            child: Stack(
              children: [
                Column(children: [
                  image != null
                      ? Container(
                          margin: const EdgeInsets.only(top: 100),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Stack(children: [
                            ClipOval(
                                child: Image.file(
                              image!,
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            )),
                            Container(
                              margin: const EdgeInsets.only(top: 70, left: 60),
                              child: IconButton(
                                onPressed: () async {
                                  pickImage(ImageSource.gallery);
                                },
                                icon: const Icon(
                                  Icons.camera_alt,
                                  color: Colors.black,
                                ),
                              ),
                            )
                          ]),
                        )
                      : Stack(children: [
                          Container(
                            margin: const EdgeInsets.only(top: 100),
                            child: const CircleAvatar(
                              radius: 50,
                              backgroundImage:
                                  AssetImage("assets/images/profile.jpeg"),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 170, left: 50),
                            child: IconButton(
                              onPressed: () async {
                                pickImage(ImageSource.gallery);
                              },
                              icon: const Icon(
                                Icons.camera_alt,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ]),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0, right: 15),
                    child: Text(
                      '${newname}',
                      style: TextStyle(fontSize: 21, color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 5,
                      right: 10,
                    ),
                    child: Text(
                      '${newmail}',
                      style: const TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ),
                  const Divider(
                    color: Colors.white,
                    height: 20,
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: MenuItems.all.map(buildMenuItem).toList(),
                    ),
                  ),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem(MenuItem item) => ListTileTheme(
        textColor: Colors.white,
        iconColor: Colors.white,
        selectedColor: Colors.yellow,
        child: ListTile(
          selected: widget.currentItem == item,
          minLeadingWidth: 20,
          leading: Icon(item.icon),
          title: Text(item.title),
          onTap: () {
            widget.onSelectedItem(item);
          },
        ),
      );
}
