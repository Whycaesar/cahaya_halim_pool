import 'package:cahaya_halim_pool/auth.services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MainnPage extends StatefulWidget {
  final User user;
  MainnPage(this.user);

  @override
  _MainnPageState createState() => _MainnPageState();
}

class _MainnPageState extends State<MainnPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MainnPage"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(widget.user.uid),
            RaisedButton(onPressed: () {
              AuthServices.signOut();
            })
          ],
        ),
      ),
    );
  }
}
