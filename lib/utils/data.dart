import 'package:my_cart_assignment/utils/product.dart';

class CartItem {
  int quantity;
  Product product;

  CartItem({
    required this.quantity,
    required this.product,
  });
}

List<CartItem> cartItems = [
  CartItem(quantity: 1, product: products[0]),
  CartItem(quantity: 1, product: products[1]),
  CartItem(quantity: 1, product: products[2]),
];
