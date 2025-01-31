import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_auth_app/presentation/bloc/auth_bloc.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login'),
          centerTitle: false,
        ),
        body: Center(
            child: ElevatedButton(
          onPressed: () {
            context.read<AuthBloc>().add(AuthLoginEvent());
          },
          child: Text('Login'),
        )));
  }
}
