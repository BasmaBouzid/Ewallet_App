import 'package:flutter/material.dart';
import '../widgets/transaction_item.dart';

import '../models/transaction.dart';
// ignore: unused_import
import '../widgets/menu_box.dart';
import '../widgets/transaction_detail.dart';
import '../screens/contacts_screen.dart';
import '../screens/transactions_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/home1.dart';







class App extends StatefulWidget {
   App({Key? key}) : super(key: key);
  
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int currentScreenIndex = 3;

  final screens = [    homeScreen(),    TransactionsScreen(),    ContactsScreen(),    ProfileScreen(),  ];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[currentScreenIndex],
      bottomNavigationBar: Container(
        height: 102,
        width: 375,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.03),
              offset: const Offset(0, -10),
              blurRadius: 10,
            ),
          ],
        ),
        child: Center(
          child: Container(
            height: 70,
            width: 343,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(0xFFF3F4F5),
            ),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        debugPrint("screen $currentScreenIndex");
                        currentScreenIndex = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          currentScreenIndex == 0
                              ? Icons.home
                              : Icons.home_outlined,
                          color: Colors.black,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'Home',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        debugPrint("screen $currentScreenIndex");
                        currentScreenIndex = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          currentScreenIndex == 1
                              ? Icons.compare_arrows
                              : Icons.compare_arrows_outlined,
                          color: Colors.black,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'Transactions',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        debugPrint("screen $currentScreenIndex");
                        currentScreenIndex = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          currentScreenIndex == 2
                              ? Icons.contacts
                              : Icons.contacts_outlined,
                          color: Colors.black,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'Contacts',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        debugPrint("screen $currentScreenIndex");
                        currentScreenIndex = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          currentScreenIndex == 3
                              ? Icons.person
                              : Icons.person_outline,
                          color: Colors.black,
                        ),
                        const SizedBox
(height: 5),
Text(
'Profile',
style: TextStyle(
color: Colors.black,
fontWeight: FontWeight.w600,
),
),
],
),
),
),
],
),
),
),
),
);
}
}





