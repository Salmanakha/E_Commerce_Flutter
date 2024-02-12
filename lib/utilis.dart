import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utilis {

void toastMessage(String message){
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 10,
    backgroundColor: Colors.red,
    textColor:Colors.white,
    fontSize: 15.1
    );
}
}