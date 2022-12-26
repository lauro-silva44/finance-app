import 'package:finance_app/screens/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../screens/statistic/statistic_page.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  get myYellow => null;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                highlightColor: myYellow,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                },
                icon: SvgPicture.asset(
                  'assets/icons/navigation-bar/home.svg',
                  height: 24,
                )),
            IconButton(
                highlightColor: myYellow,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StatisticPage()));
                },
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
        ));
  }
}
