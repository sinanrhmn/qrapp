import 'package:flutter/material.dart';

class Newtxt extends StatefulWidget {
  const Newtxt({Key? key}) : super(key: key);

  @override
  State<Newtxt> createState() => _NewtxtState();
}

class _NewtxtState extends State<Newtxt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.yellowAccent,
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Text(
            'HELLO',
            style: TextStyle(fontSize: 28, color: Colors.purple),
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () {},
              child: Text(
                'PRESS ME',
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}
