import 'package:flutter/material.dart';
import 'package:sidebar_animation/main.dart';

class Project6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Stack(
        children: <Widget>[
          Container(
            color: Color(0xFFE57373),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 60, vertical: 25),
            padding: const EdgeInsets.all(3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text(
                    "DROP  OF HOPE",
                    style: TextStyle(
                        fontFamily: 'Michroma',
                        fontWeight: FontWeight.w800,
                        fontSize: 23,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Color(0xFFB71C1C),
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
                      image: AssetImage('assets/doh1.jpg'),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                Container(
                    width: 500,
                    child: Card(
                      child: Image(
                        image: AssetImage('assets/doh2.jpg'),
                        fit: BoxFit.cover,
                      ),
                    )),
                Container(
                    width: 500,
                    child: Card(
                      child: Image(
                        image: AssetImage('assets/doh3.jpg'),
                        fit: BoxFit.fitHeight,
                      ),
                    )),
                Container(
                    width: 500,
                    child: Card(
                      child: Image(
                        image: AssetImage('assets/doh4.jpg'),
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
                        color: Colors.red,
                        borderRadius: new BorderRadius.all(
                          const Radius.circular(30),
                        )),
                    child: Center(
                      child: Text(
                        "At Rotaract we believe that blood donors are real heroes, as those who donate blood nourish lives. Rightly termed as the Drop of Hope, this project is a Blood donation Campaign wherein blood is collected from the willing donors and donated to the Thalassemia patients adding rays of hope to their lives. This year the COVID pandemic too couldn’t deter us from serving this noble cause. Multiple donors turned up at our collection center where blood was collected while adhering to all guidelines laid down by the government.",
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
