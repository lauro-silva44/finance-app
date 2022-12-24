import 'package:finance_app/utlis/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Container(
          color: bcColor,
          padding: const EdgeInsets.symmetric(
              vertical: defaultPadding, horizontal: defaultPadding),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Image.asset(
              'assets/images/girl-phone.png',
              height: 350,
            ),
            SizedBox(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
                    Text(
                      'Easy way to manage',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.archivo(
                          color: Colors.black,
                          fontSize: 35.0,
                          fontWeight: FontWeight.w600),
                    ),
                    Container(
                      color: myYellow,
                      width: 240,
                      height: 50,
                      child: Text(
                        'your money',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.archivo(
                            color: Colors.black,
                            fontSize: 35.0,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        width: 180,
                        child: Text(
                          'connect your money to friends & brands',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.archivo(
                            color: descriptionColor,
                            fontSize: 16,
                          ),
                        ))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            MaterialButton(
              onPressed: () {},
              minWidth: 241,
              height: 53,
              color: buttonColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: Text(
                'Get Started',
                style: GoogleFonts.archivo(
                  color: myYellow,
                  fontSize: 18,
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
