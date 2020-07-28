import 'package:flutter/material.dart';
import 'package:sidebar_animation/main.dart';

class Project5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Stack(
        children: <Widget>[
          Container(
            color: Color(0xFFB388FF),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 25),
            padding: const EdgeInsets.all(3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text(
                    "CHARTER  DAY",
                    style: TextStyle(
                        fontFamily: 'Michroma',
                        fontWeight: FontWeight.w800,
                        fontSize: 25,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Color(0xFF4A14AC),
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
                      image: AssetImage('assets/cd2.jpg'),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                Container(
                    width: 500,
                    child: Card(
                      child: Image(
                        image: AssetImage('assets/cd3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    )),
                Container(
                    width: 550,
                    child: Card(
                      child: Image(
                        image: AssetImage('assets/cd4.jpg'),
                        fit: BoxFit.fitHeight,
                      ),
                    )),
                Container(
                    width: 400,
                    child: Card(
                      child: Image(
                        image: AssetImage('assets/cd5.jpg'),
                        fit: BoxFit.cover,
                      ),
                    )),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 140),
            child: DraggableScrollableSheet(
              builder: (context, scrollController) {
                return SingleChildScrollView(
                  padding: const EdgeInsets.all(10),
                  controller: scrollController,
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(8, 22, 8, 20),
                    decoration: new BoxDecoration(
                        color: Color(0xFFAB47BC),
                        borderRadius: new BorderRadius.all(
                          const Radius.circular(30),
                        )),
                    child: Center(
                      child: Text(
                        "One of the most significant part of the Rotaract year is the celebration of the day of the club’s inception. Known as the Charter day celebration, this day is marked with a gathering of all club members along with members from the parent Rotary club. It is made even more memorable when the club alumni share interesting anecdotes of their association with the club followed by a cake cutting ceremony. Lastly a fire lantern is released into the skies, forever etching the event in our memories.",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 25,
                          fontFamily: "Itim",
                          color: Colors.black,
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
