import 'package:flutter/material.dart';
import 'package:flutter_coffee_shop/models/coffee.dart';

class CoffeeShop extends ChangeNotifier {
  // coffee for sale list
  final List<Coffee> _shop = [
    // black coffee
    Coffee(
        name: 'Long Black',
        price: "60 Rs",
        imagePath: "lib/assets/images/coffee.png"),

    // latte
    Coffee(
        name: 'Latte',
        price: "70 Rs",
        imagePath: "lib/assets/images/latte.png"),

    //espresso
    Coffee(
        name: 'Espresso',
        price: "80 Rs",
        imagePath: "lib/assets/images/expresso.png"),

    //iced coffee
    Coffee(
        name: 'Iced Coffee',
        price: "60 Rs",
        imagePath: "lib/assets/images/ice-coffee.png")
  ];

  //user cart
  List<Coffee> _userCart = [];

  //get coffee list
  List<Coffee> get coffeeShop => _shop;

  //get user cart
  List<Coffee> get userCart => _userCart;

  //add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
