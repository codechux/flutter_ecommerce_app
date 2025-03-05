import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/models/cart.dart';
import 'package:flutter_ecommerce_app/models/shoes.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  Shoes shoes;
  CartItem({super.key, required this.shoes});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeFromCart(widget.shoes);

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("Item removed from Cart"),
      duration: Duration(seconds: 2),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(12)),
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.shoes.image),
        title: Text(widget.shoes.name),
        subtitle: Text("₦${widget.shoes.price}"),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: removeItemFromCart,
        ),
      ),
    );
  }
}
