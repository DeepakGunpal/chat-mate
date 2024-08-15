import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
      ),
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(12.0, 0, 0, 0),
            child: Column(
              children: [
                Text(
                  'Log In',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
                // Form(child: )
              ],
            ),
          )
        ],
      ),
      // ),
    );
  }
}
