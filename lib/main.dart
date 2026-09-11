import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product List App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductListScreen(),
    );
  }
}

class ProductListScreen extends StatelessWidget {
  // Product data with custom prices
  final List<Map<String, dynamic>> products = [
    {'name': 'smartphone', 'price': 900.00},
    {'name': 'tablet', 'price': 1500.00},
    {'name': 'soy sauce', 'price': 1.50},
    {'name': 'sugar', 'price': 2.00},
    {'name': 'red horse', 'price': 2.00},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product List Exercise')),
      body: Center(
        // Outer Container
        child: Container(
          width: 350,
          height: 500,
          padding: EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8.0),
          ),
          // ListView inside the Container
          child: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return Card(
                elevation: 2.0,
                margin: EdgeInsets.symmetric(vertical: 6.0),
                child: ListTile(
                  title: Text(
                    product['name'],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.attach_money, size: 18, color: Colors.green),
                      Text(
                        '${product['price'].toStringAsFixed(2)}',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}