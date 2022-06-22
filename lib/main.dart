import 'package:flutter/material.dart';
import 'package:gadgets/routes.dart';
import 'package:gadgets/screens/splash/splash_screen.dart';

import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Play Station Gadgets',
      theme: theme(),
      //home: SplashScreen(),
      initialRoute:
          // UserProfile.routeName,
          SplashScreen.routeName,
      routes: routes,
    );
  }
}
