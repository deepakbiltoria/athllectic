import 'package:flutter/material.dart';
import 'package:athllectic/weeks/weekMon/mon1.dart';
import 'package:athllectic/weeks/weekMon/mon2.dart';
import 'package:athllectic/weeks/weekMon/mon3.dart';
import 'package:athllectic/weeks/weekMon/mon4.dart';
import 'package:athllectic/weeks/weekMon/mon5.dart';
import 'package:athllectic/weeks/weekMon/mon6.dart';
import 'package:athllectic/weeks/weekMon/mon7.dart';

class Monday extends StatefulWidget {
  final String grade;
  Monday({Key key, this.grade}) : super(key: key);

  @override
  _MondayState createState() => _MondayState();
}

class _MondayState extends State<Monday> {
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
                return Mon1();
              }
              break;

            case "/second":
              {
                return Mon2();
              }
              break;

            case "/third":
              {
                return Mon3();
              }
              break;

            case "/fourth":
              {
                return Mon4();
              }
              break;
            case "/fifth":
              {
                return Mon5();
              }
              break;
            case "/sixth":
              {
                return Mon6();
              }
              break;
            case "/seventh":
              {
                return Mon7();
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
