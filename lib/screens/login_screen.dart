import 'package:ecp_messenger/viewmodels/login_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          title: Text(
            'Login',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (value) =>
                    Provider.of<LoginViewModel>(context, listen: false)
                        .username = value,
                decoration: InputDecoration(labelText: 'Username'),
              ),
              TextField(
                onChanged: (value) =>
                    Provider.of<LoginViewModel>(context, listen: false)
                        .password = value,
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              Consumer<LoginViewModel>(
                builder: (context, viewModel, _) {
                  return DropdownButtonFormField<String>(
                    value: viewModel.role,
                    items: [
                      DropdownMenuItem(
                        value: 'high level admin',
                        child: Text('High Level Admin'),
                      ),
                      DropdownMenuItem(
                        value: 'mid level admin',
                        child: Text('Mid Level Admin'),
                      ),
                      DropdownMenuItem(
                        value: 'cohost',
                        child: Text('Cohost'),
                      ),
                    ],
                    onChanged: (value) {
                      viewModel.role = value!;
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                    decoration: InputDecoration(labelText: 'Role'),
                  );
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  Provider.of<LoginViewModel>(context, listen: false)
                      .login(context);
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
