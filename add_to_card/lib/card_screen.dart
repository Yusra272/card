import 'package:flutter/material.dart';
import 'package:wallet/models.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  List<Models> product = [
    Models(
        image:
            " https://files.cdn.printful.com/o/upload/bfl-image/1f/20335_l_a-black-shirt-with-white-text-on-it",
        name: "shirt1",
        price: "900"),
    Models(
        image:
            " https://files.cdn.printful.com/o/upload/bfl-image/1f/20335_l_a-black-shirt-with-white-text-on-it",
        name: "shirt1",
        price: "900"),
    Models(
        image:
            " https://files.cdn.printful.com/o/upload/bfl-image/1f/20335_l_a-black-shirt-with-white-text-on-it",
        name: "shirt1",
        price: "900"),
    Models(
        image:
            " https://files.cdn.printful.com/o/upload/bfl-image/1f/20335_l_a-black-shirt-with-white-text-on-it",
        name: "shirt1",
        price: "900")
  ];

  List<Models> card = [];
  void addcard(Models product) {
    setState(() {
      card.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: card.length,
          itemBuilder: (context, index) {
            final Product = product[index];
            return Card(
              child: Container(
                height: 200,
                width: double.infinity,
                child: ListTile(
                  leading: Container(
                    height: 80,
                    width: 80,
                    child: Image.network(Product.image),
                  ),
                  title: Text(Product.name),
                  subtitle: Column(
                    children: [
                      Text(Product.price),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
