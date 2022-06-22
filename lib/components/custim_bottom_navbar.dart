import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';
import '../enums.dart';
import '../screens/home/homescreen.dart';
import '../screens/userprofile/user_profile.dart';

class CustomBottomNavBar extends StatelessWidget {
  CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;
  @override
  final Color inActiveIconColor = Color(0xFFB6B6B6);
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, -15),
              blurRadius: 20,
              color: const Color(0xFFDADADA).withOpacity(0.15),
            ),
          ]),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () =>
                  Navigator.pushNamed(context, HomeScreen.routeName),
              icon: SvgPicture.asset(
                "assets/icons/Shop Icon.svg",
                color: MenuState.home == selectedMenu
                    ? kPrimaryColor
                    : inActiveIconColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/Heart Icon.svg",
                color: MenuState.favourite == selectedMenu
                    ? kPrimaryColor
                    : inActiveIconColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/Chat bubble Icon.svg",
                color: MenuState.message == selectedMenu
                    ? kPrimaryColor
                    : inActiveIconColor,
              ),
            ),
            IconButton(
              onPressed: () =>
                  Navigator.pushNamed(context, UserProfile.routeName),
              icon: SvgPicture.asset(
                "assets/icons/User Icon.svg",
                color: MenuState.profile == selectedMenu
                    ? kPrimaryColor
                    : inActiveIconColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
