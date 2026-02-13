import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_card.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  List<Product> get products => [
    Product(id: 1, name: "Akıllı Telefon", description: "En son model işlemci ve kamera.", price: 45000.0, imageUrl: ""),
    Product(id: 2, name: "Laptop", description: "Yüksek performanslı oyun ve iş bilgisayarı.", price: 65000.0, imageUrl: ""),
    Product(id: 3, name: "Kablosuz Kulaklık", description: "Gürültü engelleyici özellikli.", price: 8500.0, imageUrl: ""),
    Product(id: 4, name: "Akıllı Saat", description: "Suya dayanıklı ve spor takipli.", price: 12000.0, imageUrl: ""),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Teknoloji Kataloğu"), centerTitle: true),
      body: GridView.builder(
        padding: EdgeInsets.all(15),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, 
          childAspectRatio: 0.8,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductCard(
            product: products[index],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailScreen(product: products[index])),
              );
            },
          );
        },
      ),
    );
  }
}
