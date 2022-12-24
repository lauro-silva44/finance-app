import 'package:flutter/cupertino.dart';
import 'package:flutter_emoji/flutter_emoji.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utlis/constants.dart';

class WelcomeAndUserPhoto extends StatelessWidget {
  const WelcomeAndUserPhoto({
    Key? key,
    required this.parser,
  }) : super(key: key);

  final EmojiParser parser;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding, vertical: defaultPadding),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello Alvinho',
                style: GoogleFonts.raleway(
                    fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Welcome back ${parser.emojify(':hand:')}',
                style: GoogleFonts.raleway(
                    fontSize: 12, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          const Spacer(),
          Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: myYellow,
                  strokeAlign: StrokeAlign.outside,
                ),
                shape: BoxShape.circle,
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/user-photo.jpg',

                  ),
                ),
              ))
        ],
      ),
    );
  }
}
