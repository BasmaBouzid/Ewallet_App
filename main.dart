// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';


import 'package:flutter_svg/flutter_svg.dart';
import '../screens/contacts_screen.dart';
import '../screens/home_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/settings_screen.dart';
import '../screens/transactions_screen.dart';
import '../widgets/vertical_spacer.dart';
import '../screens/first_screen.dart';
import '../screens/login-page..dart';
import '../screens/register-page.dart';
import '../screens/forgot-password-page.dart';
import '../screens/send_money_screen.dart';
import '../screens/request_money.dart';
void main(){runApp(MyApp());}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E_wallet app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/first',
      routes: {
        
        '/first': (context) => first(),
        '/home': (context) => App(),
        '/login': (context) => LoginPage(),
        
        '/register': (context) => register(),
        '/forgot': (context) => forgot(),
        
      '/contact': (context) => ContactsScreen(),
        '/profile': (context) => ProfileScreen(),
        '/transaction': (context) => TransactionsScreen(),
        '/send': (context) => SendMoneyScreen(),
        '/request': (context) =>RequestMoneyScreen(),
      },
    );
  }}