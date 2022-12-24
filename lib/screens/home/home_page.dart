import 'package:finance_app/utlis/constants.dart';
import 'package:finance_app/utlis/utilis_buttons.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_emoji/flutter_emoji.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked_card_carousel/stacked_card_carousel.dart';

import '../../components/bill_list.dart';
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
          const BillList(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Row(
              children: [
                SizedBox(
                  height: 150,
                  width: MediaQuery.of(context).size.width - 2 * defaultPadding,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: buttons.length,
                    itemBuilder: (BuildContext context, int index) =>
                        ButtonUtils(
                            iconPath: buttons[index][0],
                            title: buttons[index][1]),
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(
                      width: 35,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}

class ButtonUtils extends StatelessWidget {
  final String iconPath, title;
  const ButtonUtils({
    Key? key,
    required this.iconPath,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Image.asset(
              iconPath,
              scale: 10,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(title, style: GoogleFonts.raleway(fontSize: 14))
        ],
      ),
    );
  }
}
