import 'package:ecp_messenger/screens/home_screen.dart';
import 'package:ecp_messenger/screens/login_screen.dart';
import 'package:ecp_messenger/screens/splash_screen.dart';
import 'package:ecp_messenger/utils/routing/route_name.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    print("Routes say ${settings.name}");
    switch (settings.name) {
      case RouteName.splashScreen:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case RouteName.loginScreen:
        return MaterialPageRoute(builder: (context) => LoginScreen());
      case RouteName.homeScreen:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(body: Center(child: Text("wrong place dude!")));
        });
    }
  }
}
