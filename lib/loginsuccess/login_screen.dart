import 'package:flutter/material.dart';
import 'package:gadgets/loginsuccess/components/body.dart';

class LoginSuccess extends StatelessWidget {
  static String routeName = "/loginsuccess";
  const LoginSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login Success",
          style: TextStyle(color: Colors.grey),
        ),
      ),
      body: BodyLs(),
    );
  }
}
