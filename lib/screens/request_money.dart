import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/horizontal_spacer.dart';
import '../widgets/primary_button.dart';
import '../widgets/vertical_spacer.dart';

class RequestMoneyScreen extends StatelessWidget {
  const RequestMoneyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
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
                    "Request Money",
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
            const VerticalSpacer(height: 24),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: const Color(0xFFF3F4F5),
                        radius: 30,
                        backgroundImage:
                            const AssetImage('assets/images/reem.png'),
                      ),
                      const HorizontalSpacer(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Reem Khaled",
                            style: TextStyle(
                              fontSize: 14,
                              color: const Color(0xFF1A1A1A),
                            ),
                          ),
                          const VerticalSpacer(height: 1),
                          Text(
                            "reem_1993@gmail.com",
                            style: TextStyle(
                              fontSize: 12,
                              color: const Color(0xFF1A1A1A).withOpacity(0.4),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const VerticalSpacer(height: 32),
                  Text(
                    "Payment Amount",
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
                      hintText: "Enter amount",
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
                  const VerticalSpacer(height: 32),
                  Text(
                    "Payment None",
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
                    ),
                    minLines: 8,
                    maxLines: 8,
                    cursorColor: Theme.of(context).colorScheme.primary,
                    decoration: InputDecoration(
                      hintText: "Add payment note",
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
          ],
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
            onTap: () => _showConfimrationDialog(context),
            child: Container(
              height: 49,
              width: 345,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(255, 9, 145, 63),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 21,
                    height: 21,
                    child: FittedBox(
                      child: Image.asset(
                        "assets/images/request_icon.png",
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  const HorizontalSpacer(width: 4),
                  Text(
                    "Request Payment",
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

  _showConfimrationDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => Dialog(
      insetPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: SizedBox(
        height: 430,
        width: 327,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Column(
            children: [
              const VerticalSpacer(height: 40),
              SizedBox(
                width: 240,
                height: 180,
                child: FittedBox(
                  child: Image.asset('assets/images/sent_illustration.webp'),
                  fit: BoxFit.fill,
                ),
              ),
              const VerticalSpacer(height: 35),
              Text(
                "The amount has been requested successfully!",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              const VerticalSpacer(height: 40),
              TextButton(
                child: Text("Ok, Thanks"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          ),
        ),
      ),
    ),
  );
}

}