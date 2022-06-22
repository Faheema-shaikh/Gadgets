import 'package:flutter/material.dart';
import 'package:gadgets/components/custim_bottom_navbar.dart';
import 'package:gadgets/enums.dart';
import 'package:gadgets/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyH(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
