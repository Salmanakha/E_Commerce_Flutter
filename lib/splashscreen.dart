import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:new_screen/login_pagr.dart';

class NewSplash extends StatefulWidget {
  const NewSplash({super.key});

  @override
  State<NewSplash> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<NewSplash> {
  @override
  void initState(){
    super.initState();

    Timer(Duration(seconds: 7), ()
    {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()
      ));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.teal,
          child: Center(
            child: SizedBox(
              width: 250.0,
              child: TextLiquidFill(
                waveDuration: Duration(seconds: 4),
                loadDuration  : Duration(seconds: 5),
                text: "Hello World",
                waveColor: Colors.white,
                boxBackgroundColor: Colors.teal,
                textStyle: TextStyle(
                  color: Colors.amberAccent,
                  fontSize: 60.0,
                  fontWeight: FontWeight.bold,
                ),
                boxHeight: 300,
                ),
            ),
            
          ),
          
        )
        ),
    );
  }
}