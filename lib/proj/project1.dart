import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sidebar_animation/main.dart';

class Project1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Stack(
        children: <Widget>[
          Container(
            color: Colors.amberAccent,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 70, vertical: 25),
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text(
                    "CLUB  OUTING",
                    style: TextStyle(
                        fontFamily: 'Michroma',
                        fontWeight: FontWeight.w800,
                        fontSize: 23,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Color(0xFFF57F17),
              borderRadius: new BorderRadius.all(const Radius.circular(30)),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 100),
            height: 400,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 500,
                  child: Card(
                    child: Image(
                      image: AssetImage('assets/IMG-20190728-WA0030.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                    width: 600,
                    child: Card(
                      child: Image(
                        image: AssetImage('assets/IMG-20190728-WA0041.jpg'),
                        fit: BoxFit.cover,
                      ),
                    )),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 110),
            child: DraggableScrollableSheet(
              builder: (context, scrollController) {
                return SingleChildScrollView(
                  padding: const EdgeInsets.all(10),
                  controller: scrollController,
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(8, 22, 8, 20),
                    decoration: new BoxDecoration(
                        color: Color(0xFFFF6F00),
                        borderRadius: new BorderRadius.all(
                          const Radius.circular(30),
                        )),
                    child: Center(
                      child: Text(
                        "Here at Rotaract it is strongly believed that the club that enjoys together stays together. One of the most interesting part of the Rotaract life is the club outing wherein all the club members gather at a farm house to have a gala time with each other. During the stay various activities are conducted adding charm to the time spent. Apart from strengthening the bond between club members, these activities also act as an ice breaker for the new comers. This short trip is packed with loads of memories that last a lifetime.",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 25,
                          fontFamily: "Itim",
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
