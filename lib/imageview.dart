import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class Imgview extends StatefulWidget {
  const Imgview({Key? key}) : super(key: key);

  @override
  State<Imgview> createState() => _ImgviewState();
}

class _ImgviewState extends State<Imgview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.blueGrey,
      body: Column(
        children: [
          MobileScanner(
            onDetect: (capture) {
              final List<Barcode> barcodes = capture.barcodes;
              // final Uint8List? image = capture.image;
              for (final barcode in barcodes) {
                debugPrint('Barcode found! ${barcode.rawValue}');
              }
            },
          ),

        ],
      ),
    );
  }
}
