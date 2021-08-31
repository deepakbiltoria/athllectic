import 'package:athllectic/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'loading_screen.dart';

class ProfilesList extends StatefulWidget {
  @override
  _ProfilesListState createState() => _ProfilesListState();
}

class _ProfilesListState extends State<ProfilesList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kInactiveCardColour,
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              'Select Profiles',
              style: kLabelTextStyle,
            ),
          ),
          Expanded(
            child: CircleAvatar(
              radius: 60.0,
              backgroundColor: Colors.teal,
            ),
          ),
          Expanded(
            child: Text('add profile', style: kLabelTextStyle),
          ),
          Expanded(
            child: Text('Guest User', style: kLabelTextStyle),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoadingScreen()),
                );
              },
              child: Text('Login', style: kLabelTextStyle))
        ],
      ),
    );
  }
}
