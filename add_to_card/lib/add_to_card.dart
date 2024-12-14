import 'package:flutter/material.dart';
import 'package:wallet/card_screen.dart';
import 'package:wallet/models.dart';

class AddToCard extends StatefulWidget {
  const AddToCard({super.key});

  @override
  State<AddToCard> createState() => _AddToCardState();
}

class _AddToCardState extends State<AddToCard> {
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

  var count = 0;
  void increment() {
    setState(() {
      count++;
    });
  }

  void decrement() {
    setState(() {
      count--;
    });
  }

  List<Models> card = [];
  void addcard(Models product) {
    setState(() {
      card.add(product);
    });
  }

  void Delete(Models product) {
    setState(() {
      card.removeWhere((e) => product == product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: product.length,
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
                            Row(
                              children: [
                                InkWell(
                                    onTap: () {
                                      decrement();
                                    },
                                    child: Icon(Icons.linear_scale_outlined)),
//SizedBox(width: 1,),
                                Text("${count}"),
//SizedBox(width: 1,),
                                InkWell(
                                    onTap: () {
                                      increment();
                                    },
                                    child: Icon(Icons.add))
                              ],
                            ),
                          ],
                        ),
                        trailing: ElevatedButton(
                          onPressed: () {
                            addcard(Product);
                          },
                          child: Text("add to card"),
                        ),
                      ),
                    ),
                  );
                }),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CardScreen()));
            },
            child: Text("card screen"),
          )
        ],
      ),
    );
  }
}
