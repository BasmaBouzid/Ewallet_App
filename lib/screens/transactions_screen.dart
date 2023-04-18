import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import '../widgets/horizontal_spacer.dart';
import '../widgets/vertical_spacer.dart';

enum TransactionType { send, request }

class Transation {
  String userImage;
  String userName;
  String dateTime;
  double amount;
  TransactionType transactionType;

  Transation(
      {required this.userImage,
      required this.userName,
      required this.dateTime,
      required this.amount,
      required this.transactionType});
}

class TransactionsScreen extends StatelessWidget {
  TransactionsScreen({Key? key}) : super(key: key);

  final List<Transation> octTransactions = [
    Transation(
      userImage: 'hiba.jpeg',
      userName: 'Hiba Naouri',
      dateTime: 'Oct 19, 05:45 AM',
      amount: 12.50,
      transactionType: TransactionType.send,
    ),
    Transation(
      userImage: 'sahar.jpeg',
      userName: 'Samar Katkni',
      dateTime: 'Oct 15, 09:10 PM',
      amount: 54.00,
      transactionType: TransactionType.send,
    ),
    Transation(
      userImage: 'sara.jpeg',
      userName: 'Sara Echebi',
      dateTime: 'Oct 12, 02:13 PM',
      amount: 25.00,
      transactionType: TransactionType.send,
    ),
    Transation(
      userImage: 'nisreen.jpeg',
      userName: 'Nisreen Belhaj',
      dateTime: 'Oct 07, 09:10 PM',
      amount: 10.50,
      transactionType: TransactionType.send,
    ),
    Transation(
      userImage: 'ahmed.jpeg',
      userName: 'Ahmed Farhat',
      dateTime: 'Oct 02, 01:19 AM',
      amount: 8.0,
      transactionType: TransactionType.send,
    ),
  ];

  final List<Transation> sepTransactions = [
    Transation(
      userImage: 'yara.jpeg',
      userName: 'Amira Lakdher',
      dateTime: 'Sep 28, 09:10 PM',
      amount: 13.00,
      transactionType: TransactionType.send,
    ),
    Transation(
      userImage: 'reem.jpeg',
      userName: 'Maram Khaled',
      dateTime: 'Sep 25, 09:10 PM',
      amount: 10.50,
      transactionType: TransactionType.send,
    ),
    Transation(
      userImage: 'yara.jpeg',
      userName: 'Amira Lakdher',
      dateTime: 'Sep 22, 10:34 AM',
      amount: 15.0,
      transactionType: TransactionType.send,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
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
                  width: 24,
                  height: 24,
                ),
                Text(
                  "Transactions",
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
                      'assets/images/search_icon.png',
                      
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          const VerticalSpacer(height: 24),
         
        
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "October, 2020",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    const VerticalSpacer(height: 16),
                    ListView.separated(
                      padding: EdgeInsets.zero,
                      itemCount: octTransactions.length,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) =>
                          const VerticalSpacer(
                        height: 16,
                      ),
                      itemBuilder: (context, index) => TransactionCard(
                        transaction: octTransactions[index],
                      ),
                    ),
                    const VerticalSpacer(height: 24),
                    Text(
                      "September, 2020",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    const VerticalSpacer(height: 16),
                    ListView.separated(
                      padding: EdgeInsets.zero,
                      itemCount: sepTransactions.length,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) =>
                          const VerticalSpacer(
                        height: 16,
                      ),
                      itemBuilder: (context, index) => TransactionCard(
                        transaction: sepTransactions[index],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TransactionCard extends StatelessWidget {
  const TransactionCard({
    Key? key,
    required this.transaction,
  }) : super(key: key);

  final Transation transaction;

  String formatCurrency(double amount) {
   NumberFormat numberFormat = NumberFormat("#,##0.00\u00a0 DT", "fr_TN");

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
            backgroundImage:
                AssetImage("assets/images/${transaction.userImage}"),
          ),
          const HorizontalSpacer(width: 17),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                transaction.userName,
                style: TextStyle(
                  fontSize: 14,
                  color: const Color(0xFF1A1A1A),
                ),
              ),
              const VerticalSpacer(height: 1),
              Text(
                transaction.dateTime,
                style: TextStyle(
                  fontSize: 12,
                  color: const Color(0xFF1A1A1A).withOpacity(0.4),
                ),
              )
            ],
          ),
          const Spacer(),
          Text(
            transaction.transactionType == TransactionType.send
                ? "-${formatCurrency(transaction.amount)}"
                : "+${formatCurrency(transaction.amount)}",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}