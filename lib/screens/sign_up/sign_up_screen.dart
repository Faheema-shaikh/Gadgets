import 'package:flutter/material.dart';
import 'package:gadgets/screens/sign_up/components/body.dart';

class SignUp extends StatelessWidget {
  static String routeName = "/sign_up";
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign Up",
          style: TextStyle(color: Colors.grey),
        ),
      ),
      body: BodySU(),
    );
  }
}
