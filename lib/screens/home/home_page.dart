import 'package:finance_app/utlis/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_emoji/flutter_emoji.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked_card_carousel/stacked_card_carousel.dart';

import '../../components/welcome_and_user_photo.dart';
import '../../utlis/billCompany.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var parser = EmojiParser();
    return Material(
      child: SafeArea(
          child: Column(
        children: [
          WelcomeAndUserPhoto(parser: parser),
          Container(
            padding: const EdgeInsets.only(left: defaultPadding),
            child: SizedBox(
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(8),
                itemCount: billList.length,
                itemBuilder: (BuildContext context, int index) {
                  return BillCards(
                    color: billList[index][0],
                    expDate: billList[index][1],
                    iconPath: billList[index][3],
                    price: billList[index][2],
                    reference: billList[index][4],
                  );
                },
              ),
            ),
          )
        ],
      )),
    );
  }
}

class BillCards extends StatelessWidget {
  final Color color;
  final String reference, iconPath, price, expDate;

  const BillCards({
    Key? key,
    required this.color,
    required this.reference,
    required this.iconPath,
    required this.price,
    required this.expDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
      height: 250,
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color,
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        //icon
        SvgPicture.asset(
          iconPath,
          height: 50,
        ),
        //refernce
        Text(
          '.... $reference',
          style: GoogleFonts.raleway(fontSize: 26, fontWeight: FontWeight.w600),
        ),
        const Spacer(),
        //bill
        Row(
          children: [
            Text('\$',
                style: GoogleFonts.raleway(
                    fontSize: 12, fontWeight: FontWeight.bold)),
            Text(price,
                style: GoogleFonts.raleway(
                    fontSize: 28, fontWeight: FontWeight.bold)),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Text('eXP. $expDate',
            style: GoogleFonts.raleway(
                fontSize: 16, fontWeight: FontWeight.normal))
        //expiration date
      ]),
    );
  }
}
