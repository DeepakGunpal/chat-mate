import 'package:flutter/material.dart';

class Singupscreen extends StatefulWidget {
  const Singupscreen({super.key});
  @override
  State<Singupscreen> createState() => _SingupscreenState();
}

class _SingupscreenState extends State<Singupscreen> {
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
                    'Let\u0027s get',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    ' Started',
                    style: TextStyle(
                      color: Colors.lightGreen,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: const Border(
                        top: BorderSide(color: Colors.grey),
                        bottom: BorderSide(color: Colors.grey),
                        right: BorderSide(color: Colors.grey),
                        left: BorderSide(color: Colors.grey)),
                    borderRadius: BorderRadius.circular(19)),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment
                          .center, // Align items vertically centered
                      children: [
                        // Column for Image (Avatar + Icon)
                        Column(
                          mainAxisAlignment: MainAxisAlignment
                              .center, // Center image vertically
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white),
                              ),
                              child: const CircleAvatar(
                                radius: 60,
                                backgroundColor: Colors.black,
                                // Adjust the size of the CircleAvatar if necessary
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ), // Image (Avatar)
                            const Row(
                              children: [
                                Icon(
                                  Icons.add_photo_alternate,
                                  color: Colors.white,
                                  size: 20,
                                  textDirection: TextDirection.ltr,
                                  applyTextScaling: true,
                                ),
                                Text(
                                  "Add picture",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                            width: 40), // Space between image and text fields

                        // Flexible Column for TextFields
                        const Flexible(
                          flex:
                              3, // Adjust the ratio of space the TextFields take (e.g., 3/4)
                          child: Column(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Email",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5),
                                  TextField(
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                    decoration: InputDecoration(
                                      hintText: 'Enter your email',
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 15),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Password",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5),
                                  TextField(
                                    obscureText: true,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                    decoration: InputDecoration(
                                      hintText: 'Enter Password',
                                      // suffixIcon: InkWell(
                                      //     // Password visibility toggle logic can go here
                                      //     ),
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    ElevatedButton(
                      // style:OutlinedButton.styleFrom(backgroundColor: Colors.white,),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        // foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.grey),
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
                  ],
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
              )
            ],
          ),
        ),
      ),

      // body:
    );
  }
}
