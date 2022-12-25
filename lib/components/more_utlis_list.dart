import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utlis/constants.dart';
import '../utlis/utilis_buttons.dart';

class MoreUtlisList extends StatelessWidget {
  const MoreUtlisList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Row(
        children: [
          SizedBox(
            height: 120,
            width: MediaQuery.of(context).size.width - 2 * defaultPadding,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: buttons.length,
              itemBuilder: (BuildContext context, int index) => ButtonUtils(
                  iconPath: buttons[index][0], title: buttons[index][1]),
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(
                width: 35,
              ),
            ),
          )
        ],
      ),
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
