import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrflView extends StatefulWidget {
  const PrflView({Key? key}) : super(key: key);

  @override
  State<PrflView> createState() => _PrflViewState();
}

class _PrflViewState extends State<PrflView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            CircleAvatar(
              radius: 50,
              child: Icon(
                Icons.man_2_sharp,
                size: 60,
              ),
              backgroundColor: Colors.pink,
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Sinan T K',
              style: TextStyle(fontSize: 24, color: Colors.red),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 200,
              height: 50,
              color: Colors.white,
              child: Row(
                children: [
                  Icon(
                    Icons.phone,
                    size: 40,
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    '6238890282',
                    style: TextStyle(fontSize: 18, color: Colors.pink),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 300,
              height: 50,
              color: Colors.white,
              child: Row(
                children: [
                  Icon(
                    Icons.mail,
                    size: 40,
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    'sinantk56@gmail.com',
                    style: TextStyle(color: Colors.pink, fontSize: 18),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
