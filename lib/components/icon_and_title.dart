import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utlis/constants.dart';

class TitleAndIcon extends StatelessWidget {
  final String title;
  final Icon iconPath;
  const TitleAndIcon({
    Key? key,
    required this.title,
    required this.iconPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(
            bottom: 10, left: defaultPadding, right: defaultPadding),
        child: Row(
          children: [
            Text(
              title,
              style: GoogleFonts.raleway(
                  fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            iconPath,
          ],
        ));
  }
}
