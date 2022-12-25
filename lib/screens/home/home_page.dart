import 'package:finance_app/utlis/constants.dart';
import 'package:finance_app/utlis/transactions.dart';
import 'package:finance_app/utlis/utilis_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_emoji/flutter_emoji.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/bill_list.dart';
import '../../components/icon_and_title.dart';
import '../../components/more_utlis_list.dart';
import '../../components/transactiom_list.dart';
import '../../components/welcome_and_user_photo.dart';
import '../../utlis/billCompany.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var parser = EmojiParser();
    return Scaffold(
      body: Material(
        child: SafeArea(
            child: Column(
          children: [
            WelcomeAndUserPhoto(parser: parser),
            const BillList(),
            const MoreUtlisList(),
            const TitleAndIcon(
              title: 'Transactions',
              iconPath: Icon(Icons.arrow_forward_ios_rounded),
            ),
            const TransactionList()
          ],
        )),
      ),
      bottomNavigationBar: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  highlightColor: myYellow,
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/icons/navigation-bar/home.svg',
                    height: 24,
                  )),
              IconButton(
                  highlightColor: myYellow,
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/icons/navigation-bar/wallet.svg',
                    height: 24,
                  )),
              IconButton(
                  highlightColor: myYellow,
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/icons/navigation-bar/send.svg',
                    height: 24,
                  )),
              IconButton(
                  highlightColor: myYellow,
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/icons/navigation-bar/chat.svg',
                    height: 24,
                  )),
              IconButton(
                  highlightColor: myYellow,
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/icons/navigation-bar/settings.svg',
                    height: 24,
                  )),
            ],
          )),
    );
  }
}
