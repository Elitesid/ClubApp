import 'package:flutter/material.dart';
import 'package:sidebar_animation/main.dart';

class Project4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Stack(
        children: <Widget>[
          Container(
            color: Colors.green,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 80, vertical: 25),
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text(
                    "PARVAAH",
                    style: TextStyle(
                        fontFamily: 'Michroma',
                        fontWeight: FontWeight.w800,
                        fontSize: 25,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Color(0xFF1B5E20),
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
                      image: AssetImage('assets/parvah1.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                    width: 600,
                    child: Card(
                      child: Image(
                        image: AssetImage('assets/parvah2.jpg'),
                        fit: BoxFit.cover,
                      ),
                    )),
                Container(
                    width: 650,
                    child: Card(
                      child: Image(
                        image: AssetImage('assets/parvah3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    )),
                Container(
                    width: 450,
                    child: Card(
                      child: Image(
                        image: AssetImage('assets/parvah4.jpg'),
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
                        color: Colors.lightGreenAccent,
                        borderRadius: new BorderRadius.all(
                          const Radius.circular(30),
                        )),
                    child: Center(
                      child: Text(
                        "Based on the belief of ‘Plant for a Better Planet’, Parvaah is a tree plantation project in association with Waatavaran NGO wherein 50 saplings of fruit bearing trees were planted near the Kharghar Golf course at a spot designated by the Forest Department. Aiming to spread environmental awareness, the highlight of this project was the inclusion of aftercare for the saplings planted. It was a wonderful experience for the participants as their coordinated efforts resulted in a strong feeling of satisfaction and fulfillment.",
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
