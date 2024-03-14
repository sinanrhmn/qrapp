import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qrapp/imageview.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.deepOrangeAccent,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Container(
                height: 100, width: 100, child: Image.asset('images/man.png')),
            SizedBox(
              height: 50,
            ),
            QrImage(
              data: '9778210540',
              version: QrVersions.auto,
              size: 200.0,
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
               style: ElevatedButton.styleFrom(
               ),
                onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => Imgview(),));
                },
                child: Text('SCAN')),
          ],
        ),
      ),
    );
  }
}
