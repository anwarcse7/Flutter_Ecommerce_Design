import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

class CommonService {
  void showToast(String message, Color bgColor) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: bgColor,
        textColor: Colors.white);
  }
}
