import 'package:flutter/material.dart';


//the change of data happens somewhere else, asa ca poti pune aici stateLESS
//widgetul Products doar primeste o lista de prod, lista aceea ar putea fi schimbata

class Products extends StatelessWidget {
  //final => the value of products will never change
  final List<String> products;
  //constructor:
  //need this to accept the incoming data de la celalalt widget
  Products(this.products){
    print("[Products Widget] Constructor");
  }

  @override
  Widget build(BuildContext context) {
    print("[Products Widget] build()");
    return Column(
      children: products
          .map(
            (element) => Card(
                  child: Column(
                    children: <Widget>[
//                      Image.asset('assets/food.jpg'),
                      Text(element)
                    ],
                  ),
                ),
          )
          .toList(),
    );
  }
}
