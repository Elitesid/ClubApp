import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DisplayFeedback extends StatefulWidget {
  @override
  _DisplayFeedbackState createState() => _DisplayFeedbackState();
}

class _DisplayFeedbackState extends State<DisplayFeedback> {
  final db = Firestore.instance;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Stack(
        children: <Widget>[
          Container(
            color: Colors.white,
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: StreamBuilder(
              // 'Users' is collection name
              stream: db.collection('Users').snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final feedbacks = snapshot.data.documents;
                  print(feedbacks);
                  List<Text> userFeedback = [];
                  for (var feedback in feedbacks) {
                    // 'Feedback' and is keyword in the database
                    final text = feedback.data['Feedback'];
                    userFeedback.add(Text(
                      text,
                      style: TextStyle(
                          fontFamily: 'Roboto', fontSize: 20, color: Colors.black),
                    ));
                  }
                  return Column(
                    children: userFeedback,
                  );
                } else {
                  return null;
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
