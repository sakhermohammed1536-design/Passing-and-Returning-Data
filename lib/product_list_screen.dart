import 'package:flutter/material.dart';
import 'package:passing_and_returnint_data/details_screen.dart';

class ProductListScreen extends StatelessWidget {
  final List<String> products = ["Laptop", "Phone", "Tablet"];
  ProductListScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product List"), centerTitle: true,backgroundColor: const Color.fromARGB(255, 6, 91, 237),),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              title: Text(products[index]),
              trailing: Icon(Icons.arrow_forward),
              onTap: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DetailsScreen(productName: products[index]),
                  ),
                );
                if (result != null) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text(result)));
                }
              },
            ),
          );
        },
      ),
    );
  }
}
