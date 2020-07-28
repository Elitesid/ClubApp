import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';
import '../bloc.navigation_bloc/navigation_bloc.dart';


class JoinUsPage extends StatelessWidget with NavigationStates {
  openurl()
  {
    String url1= "https://docs.google.com/forms/d/e/1FAIpQLScWBspVj8l_jOZvafAqeJjaXeOzY1dZgf2QmZCm8dqAsvFzJA/viewform";
    launch(url1);
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/bg3.jpg'),
            fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
            margin: EdgeInsets.only(top: 50),
            alignment: Alignment.topCenter,
            child: Text(
              'READY FOR AN ADVENTURE?',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                  fontSize: 22.0),
            )),
        Container(
          margin: EdgeInsets.only(bottom: 150),
          child: Center(
            child: RaisedButton(
              color: Color(0xFF262AAA),
              child: Text('JOIN US',style: TextStyle(fontFamily: 'Roboto',color: Colors.white),),
              onPressed: (){
                openurl();
              },
            ),
          ),
        )
      ],
    );

  }
}
