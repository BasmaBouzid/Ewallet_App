import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/vertical_spacer.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(
                  15,
                ),
                height: 102,
                width: 375,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black.withOpacity(0.1),
                      width: 1,
                    ),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 30,
                      height: 30,
                      child: FittedBox(
                       child: IconButton(
  onPressed: () {
    Navigator.pop(context);
  },
  icon: Image.asset(
    'assets/images/back_icon.png',
  ),
),

                      fit: BoxFit.fill,
                    ),
                    ),
                    Text(
                      "My Info",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 24,
                      height: 24,
                    ),
                  ],
                ),
              ),
              const VerticalSpacer(height: 32),
              Center(
                child: CircleAvatar(
                  backgroundColor: const Color(0xFFF3F4F5),
                  radius: 50,
                  child: Center(
                    child: SizedBox(
                      width: 24,
                      height: 24,
                      child: FittedBox(
                        child: SvgPicture.asset(
                          'assets/images/user_icon_active.svg',
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
              const VerticalSpacer(height: 16),
              Center(
                child: Text(
                  "Upload Image",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              const VerticalSpacer(height: 32),
              Text(
                "User Name",
                style: TextStyle(
                  fontSize: 14,
                  color: const Color(0xFF1A1A1A),
                ),
              ),
              const VerticalSpacer(height: 8),
              TextField(
                keyboardType: TextInputType.number,
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).colorScheme.primary,
                ),
                cursorColor: Theme.of(context).colorScheme.primary,
                decoration: InputDecoration(
                  hintText: "Enter your user name",
                  hintStyle: TextStyle(
                    fontSize: 14,
                    color: const Color(0xFF1A1A1A).withOpacity(0.2494),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: const Color(0xFF1A1A1A).withOpacity(0.1),
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.primary,
                      width: 1,
                    ),
                  ),
                ),
              ),
              const VerticalSpacer(height: 24),
              Text(
                "Email",
                style: TextStyle(
                  fontSize: 14,
                  color: const Color(0xFF1A1A1A),
                ),
              ),
              const VerticalSpacer(height: 8),
              TextField(
                keyboardType: TextInputType.number,
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).colorScheme.primary,
                ),
                cursorColor: Theme.of(context).colorScheme.primary,
                decoration: InputDecoration(
                  hintText: "Enter your user email",
                  hintStyle: TextStyle(
                    fontSize: 14,
                    color: const Color(0xFF1A1A1A).withOpacity(0.2494),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: const Color(0xFF1A1A1A).withOpacity(0.1),
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.primary,
                      width: 1,
                    ),
                  ),
                ),
              ),
              const VerticalSpacer(height: 24),
              Text(
                "Mobile Number",
                style: TextStyle(
                  fontSize: 14,
                  color: const Color(0xFF1A1A1A),
                ),
              ),
              const VerticalSpacer(height: 8),
              TextField(
                keyboardType: TextInputType.number,
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).colorScheme.primary,
                ),
                cursorColor: Theme.of(context).colorScheme.primary,
                decoration: InputDecoration(
                  hintText: "Enter your user mobile number",
                  hintStyle: TextStyle(
                    fontSize: 14,
                    color: const Color(0xFF1A1A1A).withOpacity(0.2494),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: const Color(0xFF1A1A1A).withOpacity(0.1),
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.primary,
                      width: 1,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 81,
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
          child: InkWell(
            child: Container(
              height: 49,
              width: 345,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Theme.of(context).colorScheme.primary,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Save Changes",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}