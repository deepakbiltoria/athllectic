import 'package:athllectic/components/icon_content2.dart';
import 'package:athllectic/components/reusable_card.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Weeks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 1.0,
          title: Text("Weeks"),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 5.0,
            ),
            Expanded(
                child: ReusableCard(
              colour: kInactiveCardColour,
              cardChild: Center(
                child: IconContent_2(
                  number: 1,
                  label3: 'WeeK',
                ),
              ),
            )),
            Expanded(
                child: ReusableCard(
              colour: kInactiveCardColour,
              cardChild: Center(
                child: IconContent_2(
                  number: 2,
                  label3: 'WeeK',
                ),
              ),
            )),
            Expanded(
                child: ReusableCard(
              colour: kInactiveCardColour,
              cardChild: Center(
                child: IconContent_2(
                  number: 3,
                  label3: 'WeeK',
                ),
              ),
            )),
            Expanded(
                child: ReusableCard(
              colour: kInactiveCardColour,
              cardChild: Center(
                child: IconContent_2(
                  number: 4,
                  label3: 'WeeK',
                ),
              ),
            )),
            SizedBox(
              height: 5.0,
            ),
          ],
        ));
  }
}
