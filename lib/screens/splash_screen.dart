import 'dart:async';

import 'package:flutter/material.dart';
import 'package:todoist/screens/navbar_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) => NavbarScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(top: 80),
          decoration: BoxDecoration(color: Theme.of(context).scaffoldBackgroundColor),

          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/img 1.png'),
              SizedBox(
                height: 80,
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.all(30),
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        "Let's Organize",
                        style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          fontSize: 35,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "Your Note TODO",
                        style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          fontSize: 35,
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      Text(
                        "Make your todo in the note and manage your priority activity in daily life to achieve goals",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                        ),
                        overflow: TextOverflow.clip,
                        maxLines: 3,
                        softWrap: true,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 30,
                      ),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF2DD8FE),

                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                          fixedSize: const Size(280, 50),
                        ),

                        onPressed: () {},
                        child: Text(
                          "Get Started",
                          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                        ),
                      ),

                      SizedBox(
                        height: 30,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account? ",
                            style: TextStyle(
                              color: Color(0xFF2DD8FE),
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            "Sign In",
                            style: TextStyle(
                              color: Color(0xFF2DD8FE),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
