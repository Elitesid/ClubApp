import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import '../proj/project1.dart';
import '../proj/project2.dart';
import '../proj/project3.dart';
import '../proj/project4.dart';
import '../proj/project5.dart';
import '../proj/project6.dart';

import '../bloc.navigation_bloc/navigation_bloc.dart';

class MyOrdersPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: Colors.white,
        ),
        Container(
            margin: const EdgeInsets.only(
                left: 30, top: 120, right: 220, bottom: 440),
            decoration: new BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: new BorderRadius.all(const Radius.circular(30)),
            ),
            child: ConstrainedBox(
              constraints: BoxConstraints.expand(),
              child: FlatButton(
                child: Text(
                  "CLUB OUTING",
                  style: TextStyle(fontFamily: 'Michroma'),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Project1()));
                },
              ),
            )),
        Container(
            margin: const EdgeInsets.only(
                left: 220, top: 120, right: 30, bottom: 440),
            decoration: new BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(30.0),
                  topRight: const Radius.circular(30.0),
                  bottomLeft: const Radius.circular(30.0),
                  bottomRight: const Radius.circular(30.0),
                )),
            child: ConstrainedBox(
              constraints: BoxConstraints.expand(),
              child: FlatButton(
                child: Text(
                  "FOOD CRAWL",
                  style: TextStyle(fontFamily: 'Michroma'),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Project2()));
                },
              ),
            )),
        Container(
            margin: const EdgeInsets.only(
                left: 30, top: 270, right: 220, bottom: 290),
            decoration: new BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(30.0),
                  topRight: const Radius.circular(30.0),
                  bottomLeft: const Radius.circular(30.0),
                  bottomRight: const Radius.circular(30.0),
                )),
            child: ConstrainedBox(
              constraints: BoxConstraints.expand(),
              child: FlatButton(
                child: Text(
                  "POETICA",
                  style: TextStyle(fontFamily: 'Michroma'),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Project3()));
                },
              ),
            )),
        Container(
            margin: const EdgeInsets.only(
                left: 220, top: 270, right: 30, bottom: 290),
            decoration: new BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(30.0),
                  topRight: const Radius.circular(30.0),
                  bottomLeft: const Radius.circular(30.0),
                  bottomRight: const Radius.circular(30.0),
                )),
            child: ConstrainedBox(
              constraints: BoxConstraints.expand(),
              child: FlatButton(
                child: Text(
                  "PARVAAH",
                  style: TextStyle(fontFamily: 'Michroma'),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Project4()));
                },
              ),
            )),
        Container(
            margin: const EdgeInsets.only(
                left: 30, top: 420, right: 220, bottom: 140),
            decoration: new BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(30.0),
                  topRight: const Radius.circular(30.0),
                  bottomLeft: const Radius.circular(30.0),
                  bottomRight: const Radius.circular(30.0),
                )),
            child: ConstrainedBox(
              constraints: BoxConstraints.expand(),
              child: FlatButton(
                child: Text(
                  "CHARTER DAY",
                  style: TextStyle(fontFamily: 'Michroma'),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Project5()));
                },
              ),
            )),
        Container(
            margin: const EdgeInsets.only(
                left: 220, top: 420, right: 30, bottom: 140),
            decoration: new BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(30.0),
                  topRight: const Radius.circular(30.0),
                  bottomLeft: const Radius.circular(30.0),
                  bottomRight: const Radius.circular(30.0),
                )),
            child: ConstrainedBox(
              constraints: BoxConstraints.expand(),
              child: FlatButton(
                child: Text(
                  "DROP OF HOPE",
                  style: TextStyle(fontFamily: 'Michroma'),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Project6()));
                },
              ),
            )),
      ],
    );
  }
}
