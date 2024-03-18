import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:qrapp/profiledata.dart';
import 'package:qrapp/registration.dart';
import 'package:qrapp/profile.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController rollno = TextEditingController();
  TextEditingController password = TextEditingController();
  void log() async {
    print(rollno.text);
    print(password.text);
    Uri uri = Uri.parse('https://scnner-web.onrender.com/api/login');
    var response = await http.post(uri,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({'rollno': rollno.text, 'password': password.text}));
    print(response.statusCode);
    print(response.body);
    var data = jsonDecode(response.body);

    if (response.statusCode == 200) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Profile(rollno:data["rollno"] ,),
          ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Incorrect Username or Password")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Text(
              'LOGIN',
              style: TextStyle(
                fontSize: 28,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 300,
              height: 50,
              child: TextField(
                controller: rollno,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your Roll number',
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 300,
              height: 50,
              child: TextField(
                controller: password,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your Password',
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 100,
              height: 30,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      log();
                    });
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => Profile(),
                    //     ));
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.teal, fontSize: 18),
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Reg(),
                      ));
                },
                child: Text('Dont have an Account? Register Now'))
          ],
        ),
      ),
    );
  }
}
