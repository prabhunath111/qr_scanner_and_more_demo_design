import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_demo_new/my_qr.dart';

class ModalBottomSheet {
  static  modalBottomSheet(
      BuildContext context
      ) async {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        context: context,
        builder: (context) {
          return MyQr();
        });
  }
}