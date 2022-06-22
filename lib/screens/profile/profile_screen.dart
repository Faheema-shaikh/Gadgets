import 'package:flutter/material.dart';
import 'package:gadgets/screens/profile/components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SignUp",
          style: TextStyle(color: Colors.grey),
        ),
      ),
      body: BodyP(),
    );
  }
}
