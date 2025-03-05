import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/models/shoes.dart';

class Cart extends ChangeNotifier {
  List<Shoes> shop = [
    Shoes(
        name: "Air Jordan",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ut feugiat purus. Nulla ut lacus eget dui hendrerit eleifend et non lacus. ",
        price: "50",
        image: "lib/images/shoe_0.png"),
    Shoes(
        name: "Nike Air Max 90",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ut feugiat purus. Nulla ut lacus eget dui hendrerit eleifend et non lacus.",
        price: "250",
        image: "lib/images/shoe_1.png"),
    Shoes(
        name: "Nike Air Max 90",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ut feugiat purus. Nulla ut lacus eget dui hendrerit eleifend et non lacus.",
        price: "710",
        image: "lib/images/shoe_2.png"),
    Shoes(
        name: "Nike Air Max 90",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ut feugiat purus. Nulla ut lacus eget dui hendrerit eleifend et non lacus. ",
        price: "470",
        image: "lib/images/shoe_3.png"),
    Shoes(
        name: "Nike Air Max 90",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ut feugiat purus. Nulla ut lacus eget dui hendrerit eleifend et non lacus.",
        price: "220",
        image: "lib/images/shoe_4.png"),
    Shoes(
        name: "Nike Air Max 90",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ut feugiat purus. Nulla ut lacus eget dui hendrerit eleifend et non lacus.",
        price: "310",
        image: "lib/images/shoe_5.png"),
  ];
  List<Shoes> userCart = [];

  List<Shoes> getShoeList() {
    return shop;
  }

  List<Shoes> getUserCart() {
    return userCart;
  }

  void addToCart(Shoes shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeFromCart(Shoes shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
