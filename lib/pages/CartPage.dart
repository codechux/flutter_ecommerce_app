import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/components/cart_item.dart';
import 'package:flutter_ecommerce_app/models/cart.dart';
import 'package:flutter_ecommerce_app/models/shoes.dart';
import 'package:provider/provider.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({super.key});

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Text(
                    "My Cart",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                      child: ListView.builder(
                          itemCount: value.getUserCart().length,
                          itemBuilder: (context, index) {
                            Shoes selectedShoe = value.getUserCart()[index];

                            return CartItem(shoes: selectedShoe);
                          }))
                ],
              ),
            ));
  }
}
