import 'dart:ui';

import 'package:flutter/material.dart';
import '../bloc.navigation_bloc/navigation_bloc.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

class HomePage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/mascotog.png'),
            fit: BoxFit.scaleDown,
          )),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          alignment: Alignment.topCenter,
          child: Image(
            image: AssetImage('assets/RCSmartCityNew-Black.png'),
            width: 350,
            height: 200,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 150),
          child: DraggableScrollableSheet(
            builder: (context, scrollController) {
              return SingleChildScrollView(
                padding: const EdgeInsets.all(10),
                controller: scrollController,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(8, 22, 8, 20),
                  decoration: new BoxDecoration(
                      color: Color(0xFF00B0FF),
                      borderRadius: new BorderRadius.all(
                        const Radius.circular(30),
                      )),
                  child: Center(
                    child: Text(
                      ">  Rotaract Club of Smart City Navi Mumbai is a youth wing of Rotary Club of Smart City Navi Mumbai and has been operational for past five years"
                      "\n\n>  We have a member strength of 60+ members with Youth ranging from Working professionals to Graduate students"
                      "\n\n>  Rotaract club of Smart City is a club registered in Rotary International District 3142 which has its operations in Navi Mumbai, Thane and beyond"
                      "\n\n>  Rotaract focuses on the development of young adults as leaders and is a platform for young men and women to enhance the knowledge and skills that will assist them in personal development, to address the physical and social needs of their communities",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 25,
                        fontFamily: "Itim",
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
