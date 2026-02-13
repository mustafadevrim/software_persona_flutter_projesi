import 'package:flutter/material.dart';
import 'models/product.dart';
import 'widgets/product_card.dart';

void main() => runApp(MaterialApp(home: HomeScreen()));

class HomeScreen extends StatelessWidget {
  final List<Product> products = [
    Product(id: 1, name: "iPhone 15", description: "Yüksek performanslı akıllı telefon.", price: 60000),
    Product(id: 2, name: "MacBook Air", description: "Hafif ve güçlü dizüstü bilgisayar.", price: 45000),
    Product(id: 3, name: "AirPods Pro", description: "Gürültü engelleyici kulaklık.", price: 8000),
    Product(id: 4, name: "Apple Watch", description: "Sağlık takibi yapan akıllı saat.", price: 15000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mini Katalog")),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: products.length,
        itemBuilder: (ctx, i) => ProductCard(
          product: products[i],
          onTap: () {
            showModalBottomSheet(
              context: context,
              builder: (ctx) => Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(products[i].name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Text(products[i].description),
                    SizedBox(height: 10),
                    Text("Fiyat: ${products[i].price} TL", style: TextStyle(color: Colors.green)),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
