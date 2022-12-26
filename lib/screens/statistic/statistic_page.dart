import 'package:finance_app/components/bottom_navigation_bar.dart';
import 'package:finance_app/components/transaction_list.dart';
import 'package:finance_app/utlis/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

import '../../components/icon_and_title.dart';

class StatisticPage extends StatefulWidget {
  const StatisticPage({super.key});

  @override
  State<StatisticPage> createState() => _StatisticPageState();
}

String _selectedValue = 'Expenses';
double _value = 5;
String _moneyInside = ((_value * 11056) / 100).toStringAsFixed(2);

class _StatisticPageState extends State<StatisticPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_sharp,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              'Statistics',
              style: GoogleFonts.raleway(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            const Spacer(),
            const Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Container(
              child: SleekCircularSlider(
                onChange: (double value) {
                  setState(() {
                    _value = value;
                    _moneyInside = ((_value * 11056) / 100).toStringAsFixed(2);
                  });
                },
                innerWidget: (double value) {
                  value = 2.0;
                  return Center(
                    child: Padding(
                        padding: EdgeInsets.all(value),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(defaultPadding),
                              child: Center(
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    value: _selectedValue,
                                    isDense: true,
                                    style: GoogleFonts.raleway(
                                        fontSize: 18, color: Colors.black),
                                    onChanged: ((newValue) {
                                      setState(() {
                                        _selectedValue = newValue!;
                                      });
                                    }),
                                    items: const [
                                      DropdownMenuItem(
                                        value: 'Expenses',
                                        child: Text('Expenses'),
                                      ),
                                      DropdownMenuItem(
                                          value: 'Payments',
                                          child: Text('Payments')),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('\$',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.raleway(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                                Text(_moneyInside,
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.raleway(
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text('out \$11.056',
                                style: GoogleFonts.raleway(
                                    fontSize: 14, color: descriptionColor)),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(
                                    onPressed: () {},
                                    child: Text('W',
                                        style: GoogleFonts.raleway(
                                            fontSize: 14,
                                            color: descriptionColor,
                                            fontWeight: FontWeight.bold))),
                                TextButton(
                                    onPressed: () {},
                                    child: Text('M',
                                        style: GoogleFonts.raleway(
                                            fontSize: 14,
                                            color: descriptionColor,
                                            fontWeight: FontWeight.bold))),
                                TextButton(
                                    onPressed: () {},
                                    child: Text('Y',
                                        style: GoogleFonts.raleway(
                                            fontSize: 14,
                                            color: descriptionColor,
                                            fontWeight: FontWeight.bold))),
                              ],
                            )
                          ],
                        )),
                  );
                  // use your custom widget inside the slider (gets a slider value from the callback)
                },
                appearance: CircularSliderAppearance(
                    size: 310,
                    customWidths: CustomSliderWidths(
                        handlerSize: 5, progressBarWidth: 5, trackWidth: 20),
                    customColors: CustomSliderColors(
                        shadowColor: myYellow,
                        dotColor: Colors.black,
                        progressBarColor: Colors.black,
                        trackColor: myPurple,
                        hideShadow: false)),
                initialValue: _value,
                max: 100,
                min: 0,
              ),
            ),
            const TitleAndIcon(
              iconPath: Icon(Icons.search_rounded),
              title: 'History',
            ),
            const TransactionList(height: 260)
          ],
        ),
      ),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}
