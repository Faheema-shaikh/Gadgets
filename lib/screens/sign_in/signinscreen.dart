import 'package:flutter/material.dart';
import 'package:gadgets/screens/sign_in/components/body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sigin",
          style: TextStyle(color: Colors.grey, fontSize: 18),
        ),
      ),
      body: Body(),
    );
  }
}
