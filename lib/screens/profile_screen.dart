import 'package:flutter/material.dart';
import 'package:flutter_application_8/screens/cards_screen.dart';
import 'package:flutter_application_8/screens/info_screen.dart';
import 'package:flutter_application_8/screens/settings_screen.dart';

import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/horizontal_spacer.dart';
import '../widgets/vertical_spacer.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          color: const Color(0xFFF3F4F5),
          height: 225,
          width: 375,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                const VerticalSpacer(height: 53),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 24,
                      height: 24,
                    ),
                    Text(
                      "My Profile",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 24,
                      height: 24,
                      child: FittedBox(
                        child: SvgPicture.asset(
                          'assets/images/edit_icon.svg',
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
                const VerticalSpacer(height: 24),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 50,
                  child: Center(
                    child: Text(
                      "B",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: const Color(0xFF1A1A1A),
                      ),
                    ),
                  ),
                ),
                const VerticalSpacer(height: 5),
                Text(
                  "Basma Bouzid",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
        const VerticalSpacer(height: 40),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => InfoScreen()),
      );
    },
             child: Container(
                height: 64,
                width: 375,
                padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: const Color(0xFFF3F4F5),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 24,
                      height: 24,
                      child: FittedBox(
                        child: Image.asset(
                          'assets/images/user_icon.png',
                          
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                    const HorizontalSpacer(width: 14),
                    Text(
                      "My Info",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                   
                    const Spacer(),
                    SizedBox(
                      width: 24,
                      height: 24,
                      child: FittedBox(
                        child: Image.asset(
                          'assets/images/arrow_icon.png',
                          color: Colors.black,
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
),
              const VerticalSpacer(height: 16),
GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CardsScreen()),
      );
    },
             child: Container(
                height: 64,
                width: 375,
                padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: const Color(0xFFF3F4F5),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 24,
                      height: 24,
                      child: FittedBox(
                        child: Image.asset(
                          'assets/images/card_icon.png',
                          color: Colors.black,
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                    const HorizontalSpacer(width: 14),
                    Text(
                      "My Cards",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 24,
                      height: 24,
                      child: FittedBox(
                        child: Image.asset(
                          'assets/images/arrow_icon.png',
                          color: Colors.black,
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
),
              const VerticalSpacer(height: 16),
GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>SettingsScreen()),
      );
    },
            child:  Container(
                height: 64,
                width: 375,
                padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: const Color(0xFFF3F4F5),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 24,
                      height: 24,
                      child: FittedBox(
                        child: Image.asset(
                          'assets/images/settings_icon.png',
                         
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                    const HorizontalSpacer(width: 14),
                    Text(
                      "Settings",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 24,
                      height: 24,
                      child: FittedBox(
                        child: Image.asset(
                          'assets/images/arrow_icon.png',
                          color: Colors.black,
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
),
              
            ],
          ),
        )
      ],
    );
  }
}