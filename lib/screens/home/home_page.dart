import 'package:finance_app/utlis/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
              child: Column(
                children: [
                  Text(
                    'Easy way to manage'
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
