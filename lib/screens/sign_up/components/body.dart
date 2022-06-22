import 'package:flutter/material.dart';
import 'package:gadgets/components/default_button.dart';
import 'package:gadgets/components/form_error.dart';
import 'package:gadgets/constants.dart';
import 'package:gadgets/screens/sign_up/components/signupform.dart';
import 'package:gadgets/size_config.dart';

class BodySU extends StatelessWidget {
  const BodySU({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              Text(
                "Register Account",
                style: headingStyle,
              ),
              Text(
                "Complete your details ",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
              SignUpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
            ],
          ),
        ),
      ),
    );
  }
}
