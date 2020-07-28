import 'package:flutter/material.dart';
import 'package:sidebar_animation/main.dart';

class Project3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Stack(
        children: <Widget>[
          Container(
            color: Colors.cyanAccent,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 110, vertical: 25),
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text(
                    "POETICA",
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
              color: Color(0xFF262AAA),
              borderRadius: new BorderRadius.all(const Radius.circular(30)),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 100),
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 400,
                  child: Card(
                    child: Image(
                      image: AssetImage('assets/pot1.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                    width: 400,
                    child: Card(
                      child: Image(
                        image: AssetImage('assets/pot1.png'),
                        fit: BoxFit.cover,
                      ),
                    )),
                Container(
                    width: 400,
                    child: Card(
                      child: Image(
                        image: AssetImage('assets/pot3.png'),
                        fit: BoxFit.cover,
                      ),
                    )),
                Container(
                    width: 400,
                    child: Card(
                      child: Image(
                        image: AssetImage('assets/pot4.png'),
                        fit: BoxFit.cover,
                      ),
                    )),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 100),
            child: DraggableScrollableSheet(
              builder: (context, scrollController) {
                return SingleChildScrollView(
                  padding: const EdgeInsets.all(10),
                  controller: scrollController,
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(8, 22, 8, 20),
                    decoration: new BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: new BorderRadius.all(
                          const Radius.circular(30),
                        )),
                    child: Center(
                      child: Text(
                        "Poetica has been one of our most loved flagship projects. In its third edition, this literary fest celebrates various forms of literature like stand-ups and storytelling though Poetry stays at the center of it. Through this fest we aim to provide a stage for literary artists to showcase their talent in front of an enthusiastic audience. This year we have been thrilled to have had the Landmark Group, Aira Fashion house and TBZ Jewelers as our esteemed sponsors. In these times of social distancing, the event was held online and received an overwhelming response.",
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
