import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:new_screen/components/my_button.dart';
import 'package:new_screen/new.dart';
import 'package:new_screen/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool loading = false;
  final _formkey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final _auth = FirebaseAuth.instance;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void _handleLogin() async {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    // Validate email
    if (email.isEmpty || !email.contains('@')) {
      _showErrorSnackbar('Invalid email');
      return;
    }

    // Validate password
    if (password.isEmpty) {
      _showErrorSnackbar('Password cannot be empty');
      return;
    }

    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Check if login is successful
      if (userCredential.user != null) {
        // Navigate to the HomePage
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NewScreen()), // Replace NextScreen with your desired screen
        );
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        _showErrorSnackbar('Invalid email or password.');
      } else {
        _showErrorSnackbar('An error occurred. Please try again later.');
      }
    } catch (e) {
      print(e);
      _showErrorSnackbar('An error occurred. Please try again later.');
    }
  }

  void _showErrorSnackbar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: const Color.fromARGB(255, 67, 85, 116),
      ),
    );
  }++

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Login"),
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
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: "Email",
                      hintText: "Enter Your Email",
                      helperText: "Enter Email e.g abc@gmail.com",
                      prefixIcon: Icon(Icons.alternate_email),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Email";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter Your Password",
                      prefixIcon: Icon(Icons.password_sharp),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Password";
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            RoundButton(
              loading: loading,
              title: "Login",
              onTap: () {
                if (_formkey.currentState!.validate()) {
                  _handleLogin();
                }
              },
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't Have An Account ?"),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignupScreen()),
                    );
                  },
                  child: Text("Sign Up"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

// Replace NextScreen with your desired screen
class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Next Screen"),
      ),
      body: Center(
        child: Text("This is the next screen after successful login."),
      ),
    );
  }
}
