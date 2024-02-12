import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:new_screen/components/my_button.dart';
import 'package:new_screen/login_pagr.dart';
import 'package:new_screen/utilis.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {


  bool loading = false;
  final _formkey = GlobalKey<FormState>();
  final emaiController = TextEditingController();
  final passwordController = TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;



@override
void dispose () {
  super.dispose();
  emaiController.dispose();
  passwordController.dispose();
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          "Sign Up"
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
              Form(
                key: _formkey,
                child: Column(
                  children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            controller: emaiController,
            decoration: InputDecoration(
              labelText: "Email",
              hintText: "Enter Your Email",
              helperText: "Enter Email e.g abc@gmail.com",
              prefixIcon: Icon(Icons.alternate_email)
            ),
          validator: (value){
            if(value!.isEmpty){
              return "Enter Email";
            }
            return null;
          },
          ),
          
          SizedBox(height: 20,),
          TextFormField(
            controller: passwordController,
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Password",
              hintText: "Enter Your Password",

              prefixIcon: Icon(Icons.password_sharp)
            ),
            validator: (value){
            if(value!.isEmpty){
              return "Enter Password";
            }
            return null;
          },
          ),


                  ],
                )),
          SizedBox(height: 20,),
          RoundButton(
          title: "Sign Up",
          loading: loading,
          onTap: () {
            if(_formkey.currentState!.validate()){
              setState(() {
                loading = true;
              });
              _auth.createUserWithEmailAndPassword(
              email: emaiController.text.toString(),
              password: passwordController.toString()).then((value){
              setState(() {
                loading = false;
              });
              }).onError((error, stackTrace) {
                Utilis().toastMessage(error.toString());
                setState(() {
                  loading = false;
                });
              });
            }
          }
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already Have An Account ?"),
              TextButton(onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(
                  builder:(context) => LoginScreen() )
                  );
              },
              child: Text("Login"))
            ],
          )
        ],
      ),
      
      ),
    );
  }
}