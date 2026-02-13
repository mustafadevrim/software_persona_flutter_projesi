import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final VoidCallback onTap;

  ProductCard({required this.product, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.phone_iphone, size: 50, color: Colors.blue),
            Text(product.name, style: TextStyle(fontWeight: FontWeight.bold)),
            Text("${product.price} TL", style: TextStyle(color: Colors.green)),
          ],
        ),
      ),
    );
  }
}
