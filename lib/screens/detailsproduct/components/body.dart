import 'package:flutter/material.dart';
import 'package:gadgets/components/default_button.dart';
import 'package:gadgets/models/product.dart';
import 'package:gadgets/screens/detailsproduct/components/color_dots.dart';
import 'package:gadgets/screens/detailsproduct/components/product_description.dart';
import 'package:gadgets/screens/detailsproduct/components/product_images.dart';
import 'package:gadgets/screens/detailsproduct/components/top_rounded.dart';

import '../../../size_config.dart';

class BodyDP extends StatelessWidget {
  const BodyDP({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProductImageDetails(product: product),
        TopRounded(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(
                product: product,
                pressOnSeeMore: () {},
              ),
              TopRounded(
                color: Color(0xFFF6F7F9),
                child: Column(
                  children: [
                    ColorDots(product: product),
                    TopRounded(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 0.15,
                          right: SizeConfig.screenWidth * 0.15,
                          top: getProportionateScreenWidth(15),
                          bottom: getProportionateScreenWidth(40),
                        ),
                        child: DefaultButton(
                          text: "Add to cart",
                          press: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
