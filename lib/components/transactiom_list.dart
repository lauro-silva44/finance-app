import 'package:finance_app/utlis/transactions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utlis/constants.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
          itemCount: transactions.length,
          itemBuilder: ((context, index) => Transaction(
                brand: transactions[index][1],
                change: transactions[index][4],
                date: transactions[index][2],
                iconPath: transactions[index][0],
                price: transactions[index][3],
              ))),
    );
  }
}

class Transaction extends StatelessWidget {
  final String iconPath, brand, date, price, change;
  const Transaction({
    Key? key,
    required this.iconPath,
    required this.brand,
    required this.date,
    required this.price,
    required this.change,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 5),
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: myGrey,
            ),
            child: SvgPicture.asset(
              iconPath,
              height: 24,
              width: 24,
              fit: BoxFit.fitHeight,
            ),
          ),
          Container(
            height: 40,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  brand,
                  style: GoogleFonts.raleway(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  date,
                  style: GoogleFonts.raleway(fontSize: 14),
                )
              ],
            ),
          ),
          const Spacer(),
          Row(
            children: [
              Text(
                '\$$price',
                style: GoogleFonts.raleway(
                    fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                change,
                style: GoogleFonts.raleway(
                  fontSize: 14,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
