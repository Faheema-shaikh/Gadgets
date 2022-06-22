import 'package:flutter/material.dart';
import 'package:gadgets/screens/detailsproduct/components/body.dart';
import 'package:gadgets/screens/detailsproduct/components/custom_app_bar.dart';
import '../../models/product.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/detailsproduct";
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments args =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      //appBar: CustomAppBar(arguments.product.rating),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(AppBar().preferredSize.height),
          child: CustomAppBar(args.product.rating)),
      body: BodyDP(product: args.product),
    );
  }
}

class ProductDetailsArguments {
  late final Product product;

  ProductDetailsArguments({required this.product});
}
