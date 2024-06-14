import 'package:flutter/material.dart';
import 'Registro.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
        children:[
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Registro',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),

          Expanded(
            child: Center(
              child: Registro(),
            ),
          ),
        ],
      ),
    );
  }
}
