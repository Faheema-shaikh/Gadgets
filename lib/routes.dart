import 'package:flutter/material.dart';
import 'package:gadgets/loginsuccess/login_screen.dart';
import 'package:gadgets/screens/carts/carts_screen.dart';
import 'package:gadgets/screens/detailsproduct/details_screen.dart';
import 'package:gadgets/screens/forgetpsd/forget_password_screen.dart';
import 'package:gadgets/screens/home/homescreen.dart';
import 'package:gadgets/screens/profile/profile_screen.dart';
import 'package:gadgets/screens/sign_in/signinscreen.dart';
import 'package:gadgets/screens/sign_up/sign_up_screen.dart';
import 'package:gadgets/screens/splash/splash_screen.dart';
import 'package:gadgets/screens/userprofile/user_profile.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgetPasswordScreen.routeName: ((context) => const ForgetPasswordScreen()),
  LoginSuccess.routeName: (context) => const LoginSuccess(),
  SignUp.routeName: (context) => const SignUp(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => const CartScreen(),
  UserProfile.routeName: (context) => UserProfile(),
};
