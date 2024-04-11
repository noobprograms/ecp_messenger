import 'package:ecp_messenger/utils/routing/route_name.dart';
import 'package:ecp_messenger/utils/routing/routes.dart';
import 'package:ecp_messenger/viewmodels/login_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoginViewModel(), // Provide your ViewModel here
      child: MaterialApp(
        title: 'ECP Messenger',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: RouteName.splashScreen,
        onGenerateRoute: Routes.generateRoute, // Start with your home screen
      ),
    );
  }
}
