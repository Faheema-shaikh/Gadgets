import 'package:flutter/material.dart';
import 'package:gadgets/components/default_button.dart';
import 'package:gadgets/components/form_error.dart';
import 'package:gadgets/constants.dart';
import 'package:gadgets/screens/profile/components/profileform.dart';
import 'package:gadgets/size_config.dart';

class BodyP extends StatelessWidget {
  const BodyP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                Text(
                  "Complete Profile",
                  style: headingStyle,
                ),
                Text(
                  "Complete your details.",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.05),
                ProfileForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
