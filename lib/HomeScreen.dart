import 'package:flutter/material.dart';

import 'Methods.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Center(
        child:TextButton(
        onPressed: () =>logOut(context),
        child: Text("LogOut"),
      ),
      ),
    );
  }
}

