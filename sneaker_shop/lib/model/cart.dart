import 'package:sneaker_shop/model/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoes = [
    Shoe(
      name: 'Air max',
      price: '120',
      imagePath: 'lib/images/air_max_white.png',
      description: 'The forward-thinking design of his lates signature.',
    ),
    Shoe(
      name: 'Air Force one',
      price: '130',
      imagePath: 'lib/images/air.png',
      description: 'The forward-thinking design of his lates signature.',
    ),
    Shoe(
      name: 'Kyrie VI',
      price: '140',
      imagePath: 'lib/images/kyrie.png',
      description: 'The forward-thinking design of his lates signature.',
    ),
    Shoe(
      name: 'Air max',
      price: '120',
      imagePath: 'lib/images/air_max_white.png',
      description: 'The forward-thinking design of his lates signature.',
    ),
  ];

  // list of items in user cart
  List<Shoe> carts = [];

  // get list of shoes for sale
  List<Shoe> getShoes() {
    return shoes;
  }

  // get cart
  List<Shoe> getCart() {
    return carts;
  }

  // add item to cart
  void addItemToCart(Shoe shoe) {
    carts.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    carts.remove(shoe);
    notifyListeners();
  }
}
