import 'package:flutter/material.dart';
import 'package:gadgets/screens/userprofile/components/profile_menu.dart';
import 'package:gadgets/screens/userprofile/components/profilepic.dart';

class BodyUp extends StatelessWidget {
  const BodyUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ProfilePic(),
        const SizedBox(height: 20),
        ProfileMenu(
          icon: "assets/icons/User Icon.svg",
          text: "My new Account",
          press: () {},
        ),
        ProfileMenu(
          icon: "assets/icons/Bell.svg",
          text: "notifications",
          press: () {},
        ),
        ProfileMenu(
          icon: "assets/icons/Settings.svg",
          text: "Settings",
          press: () {},
        ),
        ProfileMenu(
          icon: "assets/icons/Question mark.svg",
          text: "Help Center",
          press: () {},
        ),
        ProfileMenu(
          icon: "assets/icons/Log out.svg",
          text: "Log Out",
          press: () {},
        ),
      ],
    );
  }
}
