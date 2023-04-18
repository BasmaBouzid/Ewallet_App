

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';



class forgot extends StatelessWidget {
  Widget _title() {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.only(bottom: 20),
        margin: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Forgot Password ?',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 3,
              ),
              Text('enter your email and we'
                  'll send you a link to reset your password ')
            ]));
  }

  Widget _inputmail() {
    return Container(
      child: TextField(
        decoration:
            InputDecoration(hintText: 'Email'),
      ),
    );
  }

  Widget _inputsubmit() {
    return Container(
       margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(50),
        width: double.infinity,
        child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)))),
            child: Text('send')));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'forgot password page',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
         body: SingleChildScrollView(
          child: Container(
          margin: EdgeInsets.all(60),
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[_title(), _inputmail(), _inputsubmit()],

            ),
          ),
        ),
      ),
    );
  }
}





































































