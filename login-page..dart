import 'package:flutter/material.dart';

import '../screens/home_screen.dart';
import '../screens/forgot-password-page.dart';
import '../screens/register-page.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {

  bool _obscureText = true;

  
 
     
   



  Widget _title() {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.only(bottom: 20),
        margin: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Login',
  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
  textAlign: TextAlign.center,
),

              SizedBox(
                height: 25,
              ),
              Text('enter your email and password')
            ]));
  }

  Widget _inputmail() {
    return Container(
      child: TextField(
        decoration: InputDecoration(hintText: 'Email'),
      ),
    );
  }

  Widget _inputpass() {
    return Stack(
      children: <Widget>[
        Container(
          child: TextField(
            obscureText: _obscureText,
            decoration: InputDecoration(hintText: 'Password'),
          ),
        ),
        Align(
  alignment: Alignment.centerRight,
  child: IconButton(
    icon: Icon(
      _obscureText ? Icons.visibility_off : Icons.visibility,
      color: Colors.grey,
    ),
    onPressed: () {
      setState(() {  // Décommenter cette ligne
        _obscureText = !_obscureText;
      });
    },
  ),
)

      ],
    );
  }

  Widget _forgotpass(BuildContext context) {
  return GestureDetector(
    child: Align(
      alignment: Alignment.centerLeft,
      child: Container(
        color: Colors.transparent,
        padding: EdgeInsets.fromLTRB(00, 20, 20, 20),
        child: Text(
          'Forgot password?',
          style: TextStyle(
            color: Colors.lightBlue,
          ),
        ),
      )
    ),
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => forgot()),
      );
    },
  );
}

Widget _inputsubmit1() {
  return Container(
    width: double.infinity,
    child: ElevatedButton(
      onPressed: ()  {
        

          

            
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => App()),
            );
          } ,
      
      child: Text('login'),
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
          ),
    ),
  );
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
                primary: Color.fromARGB(255, 187, 183, 183),
                onPrimary: Colors.black,),
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
        Text('dont have an acount yet?'),
        GestureDetector(
          child: Container(
            padding: EdgeInsets.all(10),
            color: Colors.transparent,
            child: Text(
              'Register',
              style: TextStyle(
                color: Colors.lightBlue,
              ),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => register()),
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
      title: 'login page',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(60),
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                _title(),
                _inputmail(),
                _inputpass(),
                _forgotpass(context),
                _inputsubmit1(),
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
















