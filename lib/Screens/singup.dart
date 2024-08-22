import 'package:flutter/material.dart';

class Singupscreen extends StatefulWidget {
  const Singupscreen({super.key});
  @override
  State<Singupscreen> createState() => _SingupscreenState();
}

class _SingupscreenState extends State<Singupscreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Scaffold(
      body: Center(
        child: Text(
          "Hello",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
