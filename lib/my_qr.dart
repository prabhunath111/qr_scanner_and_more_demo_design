import 'dart:io';

import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class MyQr extends StatefulWidget {
  const MyQr({Key? key}) : super(key: key);

  @override
  _MyQrState createState() => _MyQrState();
}

class _MyQrState extends State<MyQr> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;

  @override
  void reassemble() {
    // TODO: implement reassemble
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    } else if (Platform.isIOS) {
      controller!.resumeCamera();
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 19,
          width: 50,
          color: Colors.pink,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'QR code scan'
          ),
        ),
        Expanded(
            child: Padding(
              padding: const EdgeInsets.all(38.0),
              child: QRView(key: qrKey, onQRViewCreated: _onQRViewCreated
              ),
            )
        )
      ],
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }
}
