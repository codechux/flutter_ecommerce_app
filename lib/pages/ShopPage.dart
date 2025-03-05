import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/components/shoe_tile.dart';
import 'package:flutter_ecommerce_app/models/cart.dart';
import 'package:flutter_ecommerce_app/models/shoes.dart';
import 'package:provider/provider.dart';

class Shoppage extends StatefulWidget {
  const Shoppage({super.key});

  @override
  State<Shoppage> createState() => _ShoppageState();
}

class _ShoppageState extends State<Shoppage> {
  void addShoe(Shoes shoe) {
    Provider.of<Cart>(context, listen: false).addToCart(shoe);

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("Item Added to Cart"),
      duration: Duration(seconds: 2),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(12)),
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Search",
                  style: TextStyle(color: Colors.grey),
                ),
                Icon(Icons.search, color: Colors.grey),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text("Everyone flies , but some fly higher than others"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  "Hot Picks 😍",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Text("See All", style: TextStyle(color: Colors.blue))
              ],
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                Shoes shoes = value.getShoeList()[index];

                return ShoeTile(
                  shoes: shoes,
                  onTap: () => addShoe(shoes),
                );
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 25, left: 25, right: 25),
            child: Divider(color: Colors.white),
          )
        ],
      ),
    );
  }
}
