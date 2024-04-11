import 'package:ecp_messenger/utils/routing/route_name.dart';
import 'package:flutter/material.dart';

class LoginViewModel extends ChangeNotifier {
  String _username = '';
  String _password = '';
  String _role = 'cohost';

  String get username => _username;

  set username(String value) {
    _username = value;
    notifyListeners();
  }

  String get password => _password;

  set password(String value) {
    _password = value;
    notifyListeners();
  }

  String get role => _role;

  set role(String value) {
    _role = value;
    notifyListeners();
  }

  void login(BuildContext context) {
    Navigator.pushReplacementNamed(context, RouteName.homeScreen);
  }
}
