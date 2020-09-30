import 'package:cahaya_halim_pool/login_page.dart';
import 'package:cahaya_halim_pool/views/home/home_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User firebaseUser = Provider.of<User>(context);
    // ignore: missing_required_param
    return (firebaseUser == null) ? LoginPage() : HomeView(firebaseUser);
  }
}
