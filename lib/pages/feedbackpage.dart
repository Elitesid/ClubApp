import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sidebar_animation/displayfeedback.dart';


import '../bloc.navigation_bloc/navigation_bloc.dart';

class FeedbackPage extends StatelessWidget with NavigationStates {
  final db = Firestore.instance;
  String pass = '';
  String feed = '';
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('FEEDBACK',style: TextStyle(fontFamily: 'Michroma', fontWeight: FontWeight.w700,fontSize: 25),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60,vertical: 40),
              child: TextFormField(

                onChanged:(value) {
                  feed = value;
                },
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(0, 30, 0, 30),
                    icon: Icon(Icons.text_fields),
                    hintText: 'Enter your Feedback here!'
                ),
              ),
            ),

            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    child: Text('SUBMIT',style: TextStyle(fontFamily: 'Itim',fontSize: 15),),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    onPressed: (){
                      {
                        db.collection('Users').add({'Feedback':feed});
                      }
                    },
                  ),
                ],
              ),
            ),

            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 40),
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(0, 30, 0, 30),
                  icon: Icon(Icons.security),
                  hintText: 'Enter Password!',
                ),
                onChanged: (value){
                  pass = value;
                },
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    child: Text('CLICK HERE TO VIEW ALL FEEDBACKS!',style: TextStyle(fontFamily: 'Itim',fontSize: 15),),
                    onPressed: (){
                      if (pass == 'password'){
                        //Redirect to display feedback page
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>DisplayFeedback()));
                      }
                    },
                  ),
                ],
              ),
            )

          ],
        )
      ],
    );
  }
}
