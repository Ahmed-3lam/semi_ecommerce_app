import 'package:flutter/material.dart';
import 'package:semi_ecommerce_app/const.dart';
import 'package:semi_ecommerce_app/core/utils/common_utils/image_loader.dart';

class CartItem {
  final String name;
  final double price;
  int quantity;
  String? imageUrl;

  CartItem({
    required this.name,
    required this.price,
    this.imageUrl = productImage1,
    this.quantity = 1,
  });
}

class CartScreen extends StatefulWidget {
  final List<CartItem> cartItems;

  CartScreen({required this.cartItems});

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    double totalPrice = 0;

    for (var item in widget.cartItems) {
      totalPrice += item.price * item.quantity;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40.0),
      child: Scaffold(
        body: ListView.builder(
          itemCount: widget.cartItems.length,
          itemBuilder: (context, index) {
            final item = widget.cartItems[index];
            return ListTile(
              title: Text(item.name),
              leading: ImageLoader.loadDefault(
                item.imageUrl!,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
              subtitle: Text('Price: \$${item.price.toStringAsFixed(2)}'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      setState(() {
                        if (item.quantity > 1) {
                          item.quantity--;
                        }
                      });
                    },
                  ),
                  Text(item.quantity.toString()),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        item.quantity++;
                      });
                    },
                  ),
                ],
              ),
            );
          },
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Total Price: \$${totalPrice.toStringAsFixed(2)}'),
              ElevatedButton(
                onPressed: () {
                  // Proceed to checkout
                  // You can implement the checkout logic here.
                },
                child: Text('Checkout'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
