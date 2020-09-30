import 'package:cahaya_halim_pool/auth.services.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LoginPage"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () async {
            await AuthServices.signInAnonymously();
          },
          child: Text("sign in"),
        ),
      ),
    );
  }
}
