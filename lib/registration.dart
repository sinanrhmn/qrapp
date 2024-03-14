import 'package:flutter/material.dart';
import 'package:qrapp/regsuccess.dart';

class Reg extends StatefulWidget {
  const Reg({Key? key}) : super(key: key);

  @override
  State<Reg> createState() => _RegState();
}

class _RegState extends State<Reg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.deepOrangeAccent,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              'Registration',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 300,
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Enter your Name'),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 300,
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your Roll Number'),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 300,
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your Email'),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 300,
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your Password'),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 200,
              height: 30,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Success(),));
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(color: Colors.teal, fontSize: 18),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
