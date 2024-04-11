import 'dart:async';

import 'package:ecp_messenger/utils/image_constants.dart';
import 'package:ecp_messenger/utils/routing/route_name.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, RouteName.loginScreen);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth,
      height: screenHeight,
      color: Colors.black,
      child: Center(
        child: Image.asset(ImageConstants.logoImage),
      ),
    );
  }
}
