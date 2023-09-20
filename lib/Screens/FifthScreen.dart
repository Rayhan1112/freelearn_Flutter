import 'package:flutter/material.dart';

import '../MenuWidget.dart';

class Fifth extends StatelessWidget {
  const Fifth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text("Fifth Screen"),
          leading: MenuWidget(),
        ),
        body: Container(
          child: Center(
            child: Text(
              "Page 5",
              style: TextStyle(fontSize: 41),
            ),
          ),
        ));
  }
}
