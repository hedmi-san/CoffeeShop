import 'package:flutter/material.dart';

import 'coffee.dart';

class CoffeeShop extends ChangeNotifier {
  final List<Coffee> _shop = [
    Coffee(
      name: 'Long Black',
      price: '4.10',
      imagePath: 'assets/images/coffee-cup (1).png',
    ),
    Coffee(
      name: 'Latte',
      price: '4.20',
      imagePath: 'assets/images/coffee-cup.png',
    ),
    Coffee(
      name: 'Espresso',
      price: '3.50',
      imagePath: 'assets/images/hot-coffee.png',
    ),
    Coffee(
      name: 'Iced Coffee',
      price: '4.40',
      imagePath: 'assets/images/iced-coffee.png',
    ),
  ];

  List<Coffee> _userCart = [];
  List<Coffee> get coffeeShop => _shop;
  List<Coffee> get userCart => _userCart;

  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  void removeItemFromCart(Coffee coffee) {
    _userCart.removeWhere((element) => element == coffee);
    notifyListeners();
  }
}
