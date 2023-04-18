import 'package:flutter/material.dart';

import '../screens/login-page..dart';

class first extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color.fromARGB(255, 25, 8, 155), Color(0xFF97D9E1)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
         
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 65),
              const SizedBox(height: 70),
              const Icon(
                Icons.account_balance_wallet_outlined,
                size: 100,
                color: Colors.white,
              ),
              const SizedBox(height: 50),
              const Text(
                'Welcome to My eWallet',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: ElevatedButton(
                  onPressed: () {Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    backgroundColor: Color.fromARGB(255, 132, 187, 232),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
