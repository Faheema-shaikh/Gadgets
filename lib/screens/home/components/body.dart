import 'package:flutter/material.dart';
import 'package:gadgets/screens/home/components/home_header.dart';
import 'package:gadgets/screens/home/components/playstatnproduct.dart';
import 'package:gadgets/screens/home/components/special_offers.dart';
import 'package:gadgets/size_config.dart';
import 'categories.dart';

class BodyH extends StatelessWidget {
  const BodyH({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: getProportionateScreenWidth(20)),
          const HomeHeader(),
          SizedBox(height: getProportionateScreenWidth(10)),
          const Categories(),
          SizedBox(height: getProportionateScreenWidth(30)),
          const SpecialOffer(),
          SizedBox(height: getProportionateScreenWidth(30)),
          const PlayStationProduct(),
          SizedBox(height: getProportionateScreenWidth(30)),
        ]),
      ),
    );
  }
}
