import 'package:flutter/material.dart';
import 'package:qrapp/login.dart';

class Success extends StatefulWidget {
  const Success({Key? key}) : super(key: key);

  @override
  State<Success> createState() => _successState();
}

class _successState extends State<Success> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Container(
                height: 200, width: 300, child: Image.asset('images/succes.png')),
            SizedBox(
              height: 50,
            ),
            Text(
              'Registered Succesfully!',
              style: TextStyle(fontSize: 28, color: Colors.red),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 30,
              width: 300,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ));
                  },
                  child: Text(
                    'Back to Login page',
                    style: TextStyle(fontSize: 20),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
