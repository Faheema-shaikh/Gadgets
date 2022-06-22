import 'package:flutter/material.dart';
import 'package:gadgets/screens/detailsproduct/details_screen.dart';
import 'package:gadgets/screens/home/components/section_title.dart';

import '../../../components/product_card.dart';
import '../../../models/product.dart';
import '../../../size_config.dart';

class PlayStationProduct extends StatelessWidget {
  const PlayStationProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(text: "Play Station Product", press: () {}),
        ),
        SizedBox(
          height: getProportionateScreenWidth(20),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(demoProduct.length, (index) {
                if (demoProduct[index].isPopular) {
                  return ProductCard(
                    product: demoProduct[index],
                    press: () => Navigator.pushNamed(
                      context,
                      DetailsScreen.routeName,
                      arguments: ProductDetailsArguments(
                        product: demoProduct[index],
                      ),
                    ),
                  );
                }
                return const SizedBox.shrink();
              }),
              SizedBox(
                width: getProportionateScreenWidth(20),
              )
            ],
          ),
        ),
      ],
    );
  }
}
