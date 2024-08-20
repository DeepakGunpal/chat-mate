import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool peakPassword = false;
  Widget eyeValue = const Icon(CupertinoIcons.eye_fill);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(21, 0, 21, 0),
          child: Column(
            children: [
              const Row(
                children: [
                  Text(
                    'Log in to ChatMate',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  const Row(
                    children: [
                      Text(
                        "Email",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextField(
                    controller: _usernameController,
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      hintText: 'Enter your username',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                  // Add code for password field (similar to username)
                  // Add code for login button and functionality
                ],
              ),
              const SizedBox(height: 15),
              Column(
                children: [
                  const Row(
                    children: [
                      Text(
                        "Password",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextField(
                    style: const TextStyle(color: Colors.white),
                    controller: _passwordController,
                    obscureText: peakPassword,
                    decoration: InputDecoration(
                      hintText: 'Enter Password',
                      icon: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                peakPassword = true;
                                eyeValue =
                                    const Icon(CupertinoIcons.eye_slash_fill);
                              });
                            },
                            child: InkWell(
                                onTap: () {
                                  setState(() {
                                    eyeValue =
                                        const Icon(CupertinoIcons.eye_fill);
                                  });
                                },
                                child: eyeValue),
                          ),
                        ],
                      ),
                      hintStyle: const TextStyle(color: Colors.grey),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                  // Add code for password field (similar to username)
                  // Add code for login button and functionality
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                // style:OutlinedButton.styleFrom(backgroundColor: Colors.white,),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    // Adjust the radius as needed
                  ),
                ),
                onPressed: () {},
                child: const Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'OR',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
