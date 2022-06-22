import 'package:flutter/material.dart';
import 'package:gadgets/enums.dart';
import 'package:gadgets/screens/userprofile/components/body.dart';

import '../../components/custim_bottom_navbar.dart';

class UserProfile extends StatelessWidget {
  static String routeName = "/userprofile";
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: const BodyUp(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.profile,
      ),
    );
  }
}
