import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gadgets/size_config.dart';

const kPrimaryColor = Color(0xFF00796B);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFFFA53E), Color(0xFFFF7643)]);

const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);
const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle =
    TextStyle(fontSize: getProportionateScreenWidth(28), color: Colors.black);

final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "please Enter your Email";
const String kInvalidEmailError = "Please Enter the Valid Email";
const String kPassNullError = "please Enter your Password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Password dnt match";
const String kNameNullError = "please Enter your Name";
const String kPhoneNullError = "please Enter your Phone Number";
const String kAddressNullError = "please Enter your Address";
//const String kPassNullError = "please Enter your Password";
