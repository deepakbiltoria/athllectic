import 'package:athllectic/weeks/weekTue/tue1.dart';
import 'package:athllectic/weeks/weekTue/tue2.dart';
import 'package:athllectic/weeks/weekTue/tue3.dart';
import 'package:athllectic/weeks/weekTue/tue4.dart';
import 'package:athllectic/weeks/weekTue/tue5.dart';
import 'package:athllectic/weeks/weekTue/tue6.dart';
import 'package:athllectic/weeks/weekTue/tue7.dart';
import 'package:flutter/material.dart';

class Tuesday extends StatefulWidget {
  final String grade;
  Tuesday({Key key, this.grade}) : super(key: key);

  @override
  _TuesdayState createState() => _TuesdayState();
}

class _TuesdayState extends State<Tuesday> {
  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          //TODO : here the default return will crash the app so enclose switch in a try and catch block to catch exception, and show dialogbox about it.
          switch ("${widget.grade}") {
            case "/first":
              {
                return Tue1();
              }
              break;

            case "/second":
              {
                return Tue2();
              }
              break;

            case "/third":
              {
                return Tue3();
              }
              break;

            case "/fourth":
              {
                return Tue4();
              }
              break;
            case "/fifth":
              {
                return Tue5();
              }
              break;
            case "/sixth":
              {
                return Tue6();
              }
              break;
            case "/seventh":
              {
                return Tue7();
              }
              break;

            default:
              {
                return Text("Invalid choice");
              }
              break;
          }
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
