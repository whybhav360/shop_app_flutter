import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app_flutter/providers/cart_provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context).cart;
    return Scaffold(
      appBar: AppBar(title: const Text('Cart'), centerTitle: true),
      body: ListView.builder(
        itemCount: cart.length,
        itemBuilder: (context, index) {
          final cartitem = cart[index];
          return ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(cartitem['imageUrl'].toString()),
            ),
            title: Text(
              cartitem['title'].toString(),
              style: Theme.of(context).textTheme.bodySmall,
            ),
            subtitle: Text('\$${cartitem['price'].toString()}'),
            trailing: IconButton(
              color: Colors.red,
              iconSize: 30,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text(
                        'Delete Product',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      content: Text('Do you want to remove this item?'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('No', style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold)),
                        ),
                        TextButton(onPressed: () {
                          Provider.of<CartProvider>(context, listen: false).removeProduct(cartitem);
                          Navigator.of(context).pop();
                        }, child: Text('Yes',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold))),
                      ],
                    );
                  },
                );
              },
              icon: Icon(Icons.delete),
            ),
          );
        },
      ),
    );
  }
}
