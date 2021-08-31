import 'package:athllectic/weeks/weekWed/wed1.dart';
import 'package:athllectic/weeks/weekWed/wed2.dart';
import 'package:athllectic/weeks/weekWed/wed3.dart';
import 'package:athllectic/weeks/weekWed/wed4.dart';
import 'package:athllectic/weeks/weekWed/wed5.dart';
import 'package:athllectic/weeks/weekWed/wed6.dart';
import 'package:athllectic/weeks/weekWed/wed7.dart';
import 'package:flutter/material.dart';

class Wednesday extends StatefulWidget {
  final String grade;
  Wednesday({Key key, this.grade}) : super(key: key);

  @override
  _WednesdayState createState() => _WednesdayState();
}

class _WednesdayState extends State<Wednesday> {
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
                return Wed1();
              }
              break;

            case "/second":
              {
                return Wed2();
              }
              break;

            case "/third":
              {
                return Wed3();
              }
              break;

            case "/fourth":
              {
                return Wed4();
              }
              break;
            case "/fifth":
              {
                return Wed5();
              }
              break;
            case "/sixth":
              {
                return Wed6();
              }
              break;
            case "/seventh":
              {
                return Wed7();
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
