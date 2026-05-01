import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String productName;

  const DetailsScreen({required this.productName, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Details_Screen"), centerTitle: true,backgroundColor: const Color.fromARGB(255, 6, 91, 237),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Product : $productName", style: TextStyle(fontSize: 22)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, "Added To Favorites");
              },
              child: Text("Add to Favorites"),
            ),
          ],
        ),
      ),
    );
  }
}
