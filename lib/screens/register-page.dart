

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_8/screens/home_screen.dart';

import '../screens/login-page..dart';

class register extends StatelessWidget {
  bool _obscureText = true;

  Widget _title() {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.only(bottom: 5),
        margin: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Register',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 25,
              ),
              Text('Fill the form to register')
            ]));
  }

  Widget _inputname() {
    return Container(
      child: TextField(
        decoration:
            InputDecoration(hintText: 'Name', helperText: 'enter full name'),
      ),
    );
  }

  Widget _inputmail() {
    return Container(
      child: TextField(
        decoration:
            InputDecoration(hintText: 'Email', helperText: 'enter your email'),
      ),
    );
  }

  Widget _passdevider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: <Widget>[
          Expanded(
              child: TextField(
            obscureText: _obscureText,
            decoration: InputDecoration(
                hintText: '*****', helperText: 'enter your password'),
          )),
          SizedBox(
            width: 15,
          ),
          Expanded(
              child: TextField(
            obscureText: _obscureText,
            decoration: InputDecoration(
                hintText: '*****', helperText: 'confirm your password'),
          )),
        ],
      ),
    );
  }

  Widget _inputpass() {
    return Stack(
      children: <Widget>[
        Container(
          child: TextField(
            decoration: InputDecoration(hintText: 'password'),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: IconButton(
            icon: Icon(Icons.visibility),
            onPressed: () {},
          ),
        )
      ],
    );
  }

  Widget _inputsubmit(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
            onPressed: () {Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => App()),
      );},
            style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)))),
            child: Text('Register')));
  }

  Widget _textdevider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: <Widget>[
          Expanded(child: Divider()),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'OR CONNECT WITH',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ),
          Expanded(child: Divider()),
        ],
      ),
    );
  }

  Widget _googlesignin() {
    return Container(
        width: double.infinity,
        child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
                primary: Colors.grey, onPrimary: Colors.black),
            onPressed: () {},
            icon: Icon(Icons.adb),
            label: Text('Google')));
  }

  Widget _textregister(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Already have an account?'),
          GestureDetector(
            child: Container(
              padding: EdgeInsets.all(10),
              color: Colors.transparent,
              child: Text(
                'Login',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            onTap: () {
             Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
            },
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'register page',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
         body: SingleChildScrollView(
          child: Container(
          margin: EdgeInsets.all(60),
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              _title(),
              _inputname(),
              _inputmail(),
              _passdevider(),
              _inputsubmit(context),
              _textdevider(),
              _googlesignin(),
              _textregister(context)
           ],
            ),
          ),
        ),
      ),
    );
  }
}

