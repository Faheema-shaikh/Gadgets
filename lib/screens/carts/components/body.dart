import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gadgets/models/carts.dart';
import 'package:gadgets/screens/carts/components/carts_item.dart';
import 'package:gadgets/size_config.dart';

class BodyCS extends StatefulWidget {
  @override
  State<BodyCS> createState() => _BodyCSState();
}

class _BodyCSState extends State<BodyCS> {
  //const BodyCS({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: ListView.builder(
        itemCount: demoCarts.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Dismissible(
              key: Key(demoCarts[index].product.id.toString()),
              direction: DismissDirection.endToStart,
              background: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: const Color(0xFFFFE6E6),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    const Spacer(),
                    SvgPicture.asset("assets/icons/Trash.svg"),
                  ],
                ),
              ),
              onDismissed: (direction) {
                setState(() {
                  demoCarts.removeAt(index);
                });
              },
              child: CartsItem(cart: demoCarts[index])),
        ),
      ),
    );
  }
}
