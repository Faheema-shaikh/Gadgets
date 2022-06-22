import 'package:flutter/material.dart';
import 'package:gadgets/components/default_button.dart';
import 'package:gadgets/models/carts.dart';
import 'package:gadgets/screens/carts/components/body.dart';
import 'package:gadgets/size_config.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/carts";
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: BodyCS(),
      bottomNavigationBar: const CheckOutCart(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          const Text(
            "Your Cart",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          Text(
            "${demoCarts.length} item",
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}

class CheckOutCart extends StatelessWidget {
  const CheckOutCart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 174,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, -15),
              blurRadius: 20,
              color: const Color(0xFFDADADA).withOpacity(0.15),
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text.rich(
            TextSpan(
              text: "Total:\n",
              children: [
                TextSpan(
                  text: "\$337.15",
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ],
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(190),
            child: DefaultButton(text: "Check Out", press: () {}),
          )
        ],
      ),
    );
  }
}
