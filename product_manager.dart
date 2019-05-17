import 'package:flutter/material.dart';
import './products.dart';

//stateFUL pt ca lista de produse se modifica
class ProductManager extends StatefulWidget {
  //the changes are in the state class( aia de jos, _ProductM...),
  // not in the widget classs (adica nu in asta), de aia pui final jos
  final String startingProduct;

  ProductManager(this.startingProduct){
    print("[PM Widget] Constructor");
  }

  @override
  State<StatefulWidget> createState() {
    print("[PM Widget] createState()");
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  // widget = a property that gives you access to all the properties of the parent widget that belongs to the state
  //aka sus(in widget) am startingProduct si voiam sa il folosest si aici
  //nu merge folosit direct, cand initializezi properties, tre sa il bagi intr-o metoda
  @override
  void initState() {
    print("[PM State] initState()");
    super.initState();
    _products.add(widget.startingProduct);
  } //super always refers to the base class you're extending, deci State aici
  //it calls initState() on THAT class (State aici), chiar daca ai facut @override
  //initState executa(ruleaza) INAINTE ca build sa ruleze !!

  //will be executed whenever your connected widget (ProductManager aici)
  //recieves new external data
  @override
  void didUpdateWidget(ProductManager oldWidget) {
    print("[PM State] didUpdateWidget()");
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print("[PM Widget] Build");
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            onPressed: () {
              setState(() {
                _products.add('Advanced Food Tester');
              });
            },
            child: Text('Add Product'),
          ),
        ),
        //pasezi _products widgetului Products din fisierul products.dart
        Products(_products)
      ],
    );
  }
}



