import 'dart:io';

import 'package:athllectic/screens/weeks.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/animation.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });
    controller.forward();

    super.initState();
  }

  nextPage() {
    Duration threeSec = Duration(seconds: 20);
    sleep(threeSec);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Weeks()),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        body: Stack(
          children: <Widget>[
            Center(
              child: Image.asset(
                'images/GG1.jpg',
                // width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.height,
                // fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    LinearProgressIndicator(
                      minHeight: 20.0,
                      value: controller.value,
                    ),
                    // LinearProgressIndicator(
                    //   minHeight: 20.0,
                    // ),
                    ElevatedButton(
                      child: Text('Open route'),
                      onPressed: () {
                        // Navigate back to first route when tapped.
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Weeks()),
                        );
                      },
                    ),
                    // Text(
                    //   'Circular progress indicator with a fixed color',
                    //   style: const TextStyle(fontSize: 20),
                    // ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //   children: [
                    //     // CircularProgressIndicator(
                    //     //   value: controller.value,
                    //     // ),
                    //     CircularProgressIndicator()
                    //   ],
                    // )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
