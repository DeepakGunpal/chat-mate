import 'package:chat_app/Screens/login.dart';
import 'package:chat_app/Screens/singup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Create an animation controller with a longer duration for a smoother effect
    _controller = AnimationController(
      vsync: this,
      duration:
          const Duration(seconds: 2), // Longer duration for a smoother effect
    );

    // Create a Tween for vertical movement with a smooth curve
    _animation = Tween<double>(
      begin: 0, // Start at the original position
      end: 30, // End 20 pixels lower
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOutQuad, // Smooth curve for natural movement
      ),
    );

    // Repeat the animation indefinitely in reverse
    _controller.repeat(reverse: true);
  }

  _OpenLoginPage(BuildContext context, String pageName) async {
    Widget page = Login();
    if (pageName == "Signup") {
      page = Singupscreen();
    }
    print("Login function started");
    Navigator.of(context).push(
      // MaterialPageRoute(builder: (BuildContext context)=>const Login())
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => page,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = 0.0;
          const end = 1.0;
          const curve = Curves.ease;

          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          var opacityAnimation = animation.drive(tween);

          return FadeTransition(
            opacity: opacityAnimation,
            child: child,
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _controller
        .dispose(); // Dispose of the controller when the widget is removed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage("lib/assets/images/final.jpg"),
            filterQuality: FilterQuality.high,
            fit: BoxFit.fitHeight,
            isAntiAlias: true,
          ),
        ),
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Stack(
              children: [
                const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 0,
                  right: 0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // verticalDirection: VerticalDirection.up,
                    children: [
                      Column(
                        children: [
                          Text(
                            'ChatMate',
                            style: GoogleFonts.russoOne(
                              fontSize: 60,
                              color: Colors.white,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                          // FilledButton(onPressed: (){print("button pressed");}, child: Text("hehe"))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FilledButton(
                            onPressed: () {
                              _OpenLoginPage(context, "Signup");
                            },
                            child: const Column(
                              children: [
                                Text(
                                  "Signup",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          const Text(
                            "OR",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          FilledButton(
                            style: FilledButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.black),
                            onPressed: () {
                              _OpenLoginPage(context, "Login");
                            },
                            child: const Column(
                              children: [
                                Text(
                                  "Login",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // ),
                Positioned(
                  bottom: 254 + _animation.value,
                  left: 255,
                  child: Image.asset(
                    "lib/assets/images/chat2.png",
                    height: 120,
                    width: 90,
                  ),
                ),
                Positioned(
                  bottom: 50 +
                      _animation
                          .value, // Apply the animation value to the bottom position
                  left: 0,
                  right: 55,
                  child: Column(
                    children: [
                      Image.asset(
                        "lib/assets/images/robot1.png",
                        height: 240,
                      ),
                      Image.asset(
                        "lib/assets/images/shadow.png",
                        height: 70,
                      )
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
