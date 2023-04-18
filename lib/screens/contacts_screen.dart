import 'package:flutter/material.dart';


import 'package:intl/intl.dart';
import '../widgets/horizontal_spacer.dart';
import '../widgets/vertical_spacer.dart';
import '../screens/send_money_screen.dart';
import '../screens/request_money.dart';

class User {
  String name;
  String email;
  String image;

  User({
    required this.name,
    required this.email,
    required this.image,
  });
}

class ContactsScreen extends StatelessWidget {
  ContactsScreen({Key? key}) : super(key: key);
   final bool _splitScreenMode = false;
  final List<User> users = [
    User(
        name: 'Ahmed Farhat',
        image: 'ahmed.jpeg',
        email: 'ahmed.farhat@gmail.com'),
    User(
        name: 'Sara Echabi',
        image: 'sara.jpeg',
        email: 'sara.echebi@yahoo.com'),
    User(
        name: 'Ahmed Ibrahim',
        image: 'ahmed.jpeg',
        email: 'ahmed_ibrahim@gmail.com'),
    User(
        name: 'Maram Khaled', image: 'reem.jpeg', email: 'Maram_khaled@yahoo.com'),
    User(name: 'Hiba Naouri', image: 'hiba.jpeg', email: 'naouri_1993@gmail.com'),
    User(
        name: 'Samar Karkni',
        image: 'sahar.jpeg',
        email: 'samar.kerknir@yahoo.com'),
    User(
        name: 'Nisreen Belhaj',
        image: 'nisreen.jpeg',
        email: 'nisreen_5472@gmail.com'),
    User(
        name: 'Amira Lakdher',
        image: 'yara.jpeg',
        email: 'amira_lakdher@hotmail.com'),
  ];

  @override
 
  
  Widget build(BuildContext context) {
    return Column(
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
                width: 24,
                height: 24,
              ),
              Text(
                "Contacts",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                width: 24,
                height: 24,
                child: FittedBox(
                  child: Image.asset(
                    'assets/images/add_icon.jpg',
                 
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ),
        const VerticalSpacer(height: 24),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Enter a name",
              hintStyle: TextStyle(
                fontSize: 14,
                color: const Color(0xFF1A1A1A).withOpacity(0.3),
                fontWeight: FontWeight.w500,
              ),
              filled: true,
              fillColor: Colors.white,
              prefixIcon:   Icon(
      Icons.search,
      color: Colors.grey,
    ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: const Color(0xFF1A1A1A).withOpacity(0.1),
                  width: 1,
                ),
              ),
            ),
          ),
        ),
        const VerticalSpacer(height: 24),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              child: ListView.separated(
                padding: EdgeInsets.zero,
                itemCount: users.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) => const VerticalSpacer(
                  height: 16,
                ),
                itemBuilder: (context, index) => UserCard(
                  user: users[index],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class UserCard extends StatelessWidget {
  const UserCard({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  String formatCurrency(double amount) {
    final NumberFormat numberFormat = NumberFormat("#,##00.00", "en_US");
    return numberFormat.format(amount);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 49,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: const Color(0xFFF3F4F5),
            backgroundImage: AssetImage("assets/images/${user.image}"),
          ),
          const HorizontalSpacer(width: 17),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                user.name,
                style: TextStyle(
                  fontSize: 14,
                  color: const Color(0xFF1A1A1A),
                ),
              ),
              const VerticalSpacer(height: 1),
              Text(
                user.email,
                style: TextStyle(
                  fontSize: 12,
                  color: const Color(0xFF1A1A1A).withOpacity(0.4),
                ),
              )
            ],
          ),
          const Spacer(),
          GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SendMoneyScreen()),
    );
  },
  child: Container(
    width: 40,
    height: 40,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Color.fromARGB(255, 9, 99, 173),
    ),
    child: Center(
      child: SizedBox(
        width: 20,
        height: 20,
        child: FittedBox(
          child: Image.asset(
            'assets/images/send_icon.png',
          ),
          fit: BoxFit.fill,
        ),
      ),
    ),
  ),
),

          const HorizontalSpacer(width: 8),
GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RequestMoneyScreen()),
    );
  },
         child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 9, 145, 63),
            ),
            child: Center(
              child: SizedBox(
                width: 20,
                height: 20,
                child: FittedBox(
                  child: Image.asset(
                    'assets/images/request_icon.png',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
),
        ],
      ),
    );
  }
}