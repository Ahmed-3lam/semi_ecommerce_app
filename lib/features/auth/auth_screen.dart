import 'dart:async';

import 'package:flutter/material.dart';
import 'package:semi_ecommerce_app/core/navigation/custom_navigation.dart';
import 'package:semi_ecommerce_app/core/navigation/routes.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  String image = "assets/images/background1.png";

  @override
  void initState() {
    Timer.periodic(
        const Duration(
          seconds: 2,
        ), (timer) {
      if (image == "assets/images/background1.png") {
        image = "assets/images/background2.png";
      } else {
        image = "assets/images/background1.png";
      }

      setState(() {});
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    /// Responsive Design

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
              width: width,
              height: height,
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              )),
          Container(
            color: Colors.black.withOpacity(.2),
          ),
          Positioned(
            top: 100,
            child: Container(
              height: height * .9,
              width: width,
              padding: EdgeInsets.only(bottom: 50, left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome to our",
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                      Text(
                        "E-Grocery",
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      _button(
                        text: "Continue with Email or Phone",
                        color: Colors.green,
                        textColor: Colors.white,
                        onTap: () {
                          CustomNavigator.push(Routes.LOGIN);
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      _button(
                          text: "Create an account",
                          color: Colors.white,
                          textColor: Colors.black,
                          onTap: () {
                            CustomNavigator.push(Routes.SIGN_UP);
                          }),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _button(
      {required String text,
      required Color color,
      required Color textColor,
      void Function()? onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(15)),
        child: Center(
            child: Text(
          text,
          style: TextStyle(color: textColor, fontSize: 18),
        )),
      ),
    );
  }
}
