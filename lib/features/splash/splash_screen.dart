import 'dart:async';

import 'package:flutter/material.dart';
import 'package:semi_ecommerce_app/core/navigation/custom_navigation.dart';

import '../../core/navigation/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Color _color = Colors.green;
  String _image = "assets/images/logo1.png";

  @override
  void initState() {
    Future.delayed(Duration(seconds: 2)).then((value) {
      _color = Colors.white;
      _image = "assets/images/logo2.png";
      setState(() {});
    });
    Future.delayed(Duration(seconds: 4)).then((value) => CustomNavigator.push(
          Routes.BOARDING,
          clean: true,
        ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: _color,
        body: Center(
          child: Container(
              height: 300,
              width: 300,
              child: Image.asset(
                _image,
              )),
        ));
  }
}
