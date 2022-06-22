import 'package:flutter/material.dart';
import 'package:gadgets/screens/forgetpsd/body.dart';

class ForgetPasswordScreen extends StatelessWidget {
  static String routeName = "/forget_password";
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Forget Password",
          style: TextStyle(color: Colors.grey),
        ),
      ),
      body: BodyFP(),
    );
  }
}
