import 'package:flutter/material.dart';

import '../blocs/bloc.dart';

class LoginScreen extends StatelessWidget {
  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: [
          emailField(),
          passwordField(),
          Container(margin: EdgeInsets.only(top: 25.0)),
          submitButton(),
        ],
      )
    );
  }
}

Widget emailField() {
  return StreamBuilder(
    stream: bloc.email,
    builder: (context, snapshot) {
      return TextField(
        onChanged: bloc.changeEmail,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'you@example.com',
          labelText: 'Email Address',
          errorText: snapshot.error
        ),
      );
    },
  );
}

Widget passwordField() {
   return TextField(
    obscureText: true,
    decoration: InputDecoration(
      hintText: 'password',
      labelText: 'Password'
    ),
  );
}

Widget submitButton() {
  return RaisedButton(
    child: Text('Log In'),
    color: Colors.blue,
    onPressed: () {},
  );
}