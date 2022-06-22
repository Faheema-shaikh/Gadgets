import 'package:gadgets/models/product.dart';

class Cart {
  late final Product product;
  late final int numOfitem;

  Cart({required this.product, required this.numOfitem});
}

List<Cart> demoCarts = [
  Cart(product: demoProduct[0], numOfitem: 2),
  Cart(product: demoProduct[1], numOfitem: 1),
  Cart(product: demoProduct[0], numOfitem: 1),
];
