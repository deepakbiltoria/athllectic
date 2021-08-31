import 'package:athllectic/components/icon_content2.dart';
import 'package:athllectic/components/reusable_card.dart';
import 'package:athllectic/routes/Tuesday.dart';
import 'package:athllectic/routes/monday.dart';
import 'package:athllectic/routes/wednesday.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class WeekDays extends StatelessWidget {
  final String trade;
  WeekDays({Key key, this.trade}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    giveRoutes(String day) {
      dynamic selectDay() {
        switch (day) {
          case "/first":
            {
              return Monday(grade: trade);
            }
            break;

          case "/second":
            {
              return Tuesday(grade: trade);
            }
            break;
          case "/third":
            {
              return Wednesday(grade: trade);
            }
            break;

          case "/fourth":
            {
              return Monday(grade: trade);
            }
            break;
          case "/fifth":
            {
              return Monday(grade: trade);
            }
            break;
          case "/sixth":
            {
              return Monday(grade: trade);
            }
            break;
          case "/seventh":
            {
              return Monday(grade: trade);
            }
            break;
          default:
            {
              return Text("Invalid choice");
            }
            break;
        }
      }

      var route = MaterialPageRoute(
        builder: (BuildContext context) => selectDay(),
      );
      Navigator.of(context).push(route);
    }

    return Scaffold(
        appBar: AppBar(
          elevation: 1.0,
          title: Text("Week Days"),
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
                  label3: 'Monday',
                ),
              ),
              onPress: () {
                giveRoutes("/first");
              },
            )),
            Expanded(
                child: ReusableCard(
                    colour: kInactiveCardColour,
                    cardChild: Center(
                      child: IconContent_2(
                        number: 2,
                        label3: ' Tuesday ',
                      ),
                    ),
                    onPress: () {
                      giveRoutes("/second");
                    })),
            Expanded(
                child: ReusableCard(
              colour: kInactiveCardColour,
              cardChild: Center(
                child: IconContent_2(
                  number: 3,
                  label3: 'Wednesday ',
                ),
              ),
            )),
            Expanded(
                child: ReusableCard(
              colour: kInactiveCardColour,
              cardChild: Center(
                child: IconContent_2(
                  number: 4,
                  label3: 'Thursday ',
                ),
              ),
            )),
            Expanded(
                child: ReusableCard(
              colour: kInactiveCardColour,
              cardChild: Center(
                child: IconContent_2(
                  number: 5,
                  label3: 'Friday',
                ),
              ),
            )),
            Expanded(
                child: ReusableCard(
              colour: kInactiveCardColour,
              cardChild: Center(
                child: IconContent_2(
                  number: 6,
                  label3: 'Saturday',
                ),
              ),
            )),
            Expanded(
                child: ReusableCard(
              colour: kInactiveCardColour,
              cardChild: Center(
                child: IconContent_2(
                  number: 7,
                  label3: 'Sunday',
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
