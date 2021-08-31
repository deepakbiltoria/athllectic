import 'package:athllectic/components/icon_content2.dart';
import 'package:athllectic/components/reusable_card.dart';
import 'package:athllectic/screens/weekdays.dart';
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
            // here i need a loop to add card with diff icon number values.
            SizedBox(
              height: 5.0,
            ),
            Expanded(
              child: ReusableCard(
                /* pass value of number and label3 from Reusablecard constructor to the iconcontent2 class
                    so that we can use add.ReusableCard() with reduced parameter passed to Reusablecard constructor

                  all of this is a bad idea as it would restrict and decrease the scope of ReusableCard
                   in other terms by this technique ReusableCard will be bound to use Iconcontent2 widget only*/
                colour: kInactiveCardColour,
                cardChild: Center(
                  child: IconContent_2(
                    number: 1,
                    label3: 'WeeK',
                  ),
                ),
                onPress: () {
                  var route = MaterialPageRoute(
                    builder: (BuildContext context) =>
                        WeekDays(trade: "/first"),
                  );
                  Navigator.of(context).push(route);
                },
              ),
            ),
            Expanded(
                child: ReusableCard(
              colour: kInactiveCardColour,
              cardChild: Center(
                child: IconContent_2(
                  number: 2,
                  label3: 'WeeK',
                ),
              ),
              onPress: () {
                var route = MaterialPageRoute(
                  builder: (BuildContext context) => WeekDays(trade: "/second"),
                );
                Navigator.of(context).push(route);
              },
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
              onPress: () {
                var route = MaterialPageRoute(
                  builder: (BuildContext context) => WeekDays(trade: "/third"),
                );
                Navigator.of(context).push(route);
              },
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
              onPress: () {
                var route = MaterialPageRoute(
                  builder: (BuildContext context) => WeekDays(trade: "/fourth"),
                );
                Navigator.of(context).push(route);
              },
            )),
            Expanded(
                child: ReusableCard(
              colour: kInactiveCardColour,
              cardChild: Center(
                child: IconContent_2(
                  number: 5,
                  label3: 'WeeK',
                ),
              ),
              onPress: () {
                var route = MaterialPageRoute(
                  builder: (BuildContext context) => WeekDays(trade: "/fifth"),
                );
                Navigator.of(context).push(route);
              },
            )),
            Expanded(
                child: ReusableCard(
              colour: kInactiveCardColour,
              cardChild: Center(
                child: IconContent_2(
                  number: 6,
                  label3: 'WeeK',
                ),
              ),
              onPress: () {
                var route = MaterialPageRoute(
                  builder: (BuildContext context) => WeekDays(trade: "/sixth"),
                );
                Navigator.of(context).push(route);
              },
            )),

            SizedBox(
              height: 5.0,
            ),
          ],
        ));
  }
}
