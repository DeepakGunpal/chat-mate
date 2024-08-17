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
        // automaticallyImplyLeading: false,
        foregroundColor: Colors.white,
      ),
      body: const Column(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text(
                  'Log In to ChatMate',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(21, 0, 0, 0),
            child: Column(
              children: [
                TextField(
                  //  controller: _titleController,
                  decoration: InputDecoration(
                    labelText: 'Title',
                    hintText: 'Add name of the place',
                    hintTextDirection: TextDirection.rtl,
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  // style: GoogleFonts.aBeeZee(color: Colors.white,fontSize: 20),
                ),
              ],
            ),
          )
        ],
      ),
      // ),
    );
  }
}
