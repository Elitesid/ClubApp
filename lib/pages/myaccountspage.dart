import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import '../bloc.navigation_bloc/navigation_bloc.dart';

class MyAccountsPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Stack(children: <Widget>[
        Container(
          color: Colors.white,
        ),
        ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 40),
                  child: Text(
                    "OUR TEAM",
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Michroma',
                        fontSize: 28),
                  ),

                ),
              ],
            ),
            Container(
                child: FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image: 'https://secureservercdn.net/166.62.107.20/rg0.247.myftpupload.com/wp-content/uploads/2020/07/MG_6775-1240x827.jpg',
                  fit: BoxFit.scaleDown,
                ),
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: RichText(text: TextSpan(
                text: 'PRESIDENT ',
                style: TextStyle(
                  fontFamily: 'Michroma',
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Colors.black
                ),
                children: [
                  TextSpan(
                    text: 'Rtr.Vishal Shah',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: Colors.black
                    )
                  ),
                  TextSpan(
                    text: '\n\nA person who truly thinks out of the box and stands apart from the crowd. He encourages new ideas and pushes everyone to their limit. He will manage the club, just as well as he manages to finish everything on his plate.',
                    style: TextStyle(
                      fontFamily: 'Itim',
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Colors.black
                    )
                  )
                ]
              ),
              ),
            ),
            Container(
              child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image:'https://secureservercdn.net/166.62.107.20/rg0.247.myftpupload.com/wp-content/uploads/2020/07/IMG-20200325-WA0020.jpg',
              fit: BoxFit.scaleDown,),
              margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: RichText(text: TextSpan(
                  text: 'IPP ',
                  style: TextStyle(
                      fontFamily: 'Michroma',
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.black
                  ),
                  children: [
                    TextSpan(
                        text: 'Rtr.Shalaka Adhikari',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: Colors.black
                        )
                    ),
                    TextSpan(
                        text: '\n\nWith a personality as beautiful as her voice, she has truly helped us step out of our heads and will continue to do so with her experience and expertise.She will guide everyone with her plethora of experience',
                        style: TextStyle(
                            fontFamily: 'Itim',
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.black
                        )
                    )
                  ]
              ),
              ),
            ),
            Container(
              child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image:'https://pbs.twimg.com/profile_images/670482308902862848/DOtJgjLR_400x400.jpg',
                fit: BoxFit.scaleDown,),
              margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: RichText(text: TextSpan(
                  text: 'SECRETARY ',
                  style: TextStyle(
                      fontFamily: 'Michroma',
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.black
                  ),
                  children: [
                    TextSpan(
                        text: 'Rtr.Dr.Projesh Mukherjee',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: Colors.black
                        )
                    ),
                    TextSpan(
                        text: "\n\nA cricket lover slash SRK fan. He’s all set to get his attention divided into 3 Ps – patients, Pranali and personal life.He's ready to Bamboozle you with his wit and humour",
                        style: TextStyle(
                            fontFamily: 'Itim',
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.black
                        )
                    )
                  ]
              ),
              ),
            ),
            Container(
              child: Image.asset('assets/danish.jpeg',
                fit: BoxFit.scaleDown,),
              margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: RichText(text: TextSpan(
                  text: 'VICE-PRESIDENT ',
                  style: TextStyle(
                      fontFamily: 'Michroma',
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.black
                  ),
                  children: [
                    TextSpan(
                        text: 'Rtr.Daanish Shaikh',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: Colors.black
                        )
                    ),
                    TextSpan(
                        text: "\n\nHe’s played his part in laying the foundation of the club and now he’s back to take charge.He'll guide the Board of Directors with his experience and talent.",
                        style: TextStyle(
                            fontFamily: 'Itim',
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.black
                        )
                    )
                  ]
              ),
              ),
            ),
            Container(
              child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image:'https://secureservercdn.net/166.62.107.20/rg0.247.myftpupload.com/wp-content/uploads/2020/07/Screenshot_2020-07-08-19-49-00-89-e1594582220728.jpg',
                fit: BoxFit.scaleDown,),
              margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: RichText(text: TextSpan(
                  text: 'VICE-PRESIDENT ',
                  style: TextStyle(
                      fontFamily: 'Michroma',
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.black
                  ),
                  children: [
                    TextSpan(
                        text: 'Rtr.Revati Sawant ',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: Colors.black
                        )
                    ),
                    TextSpan(
                        text: "\n\nFunny and smart. She’s proved her dedication to the club time and again. She will be giving her full time to the avenues after successfully completing her year as Secretary.",
                        style: TextStyle(
                            fontFamily: 'Itim',
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.black
                        )
                    )
                  ]
              ),
              ),
            ),
            Container(
              child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image:'https://secureservercdn.net/166.62.107.20/rg0.247.myftpupload.com/wp-content/uploads/2020/07/DSC_0599-01-1240x1024.jpeg',
                fit: BoxFit.scaleDown,),
              margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: RichText(text: TextSpan(
                  text: 'TREASURER ',
                  style: TextStyle(
                      fontFamily: 'Michroma',
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.black
                  ),
                  children: [
                    TextSpan(
                        text: 'Rtr.Aman Momin ',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: Colors.black
                        )
                    ),
                    TextSpan(
                        text: "\n\nA wanderer. He’s going to go out of his usual routine of planning stability of buildings and find the stability of the club finances.",
                        style: TextStyle(
                            fontFamily: 'Itim',
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.black
                        )
                    )
                  ]
              ),
              ),
            ),
            Container(
              child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image:'https://secureservercdn.net/166.62.107.20/rg0.247.myftpupload.com/wp-content/uploads/2020/07/20200629_140301-1240x1240.jpg',
                fit: BoxFit.scaleDown,),
              margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: RichText(text: TextSpan(
                  text: 'SAA / HRD  ',
                  style: TextStyle(
                      fontFamily: 'Michroma',
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.black
                  ),
                  children: [
                    TextSpan(
                        text: 'Rtr.Siddhant Tambe ',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: Colors.black
                        )
                    ),
                    TextSpan(
                        text: "\n\nThe youngest core team member and a tech-geek slash bike rider. Keeping aside his joyful and careless nature for a while, he’s gonna be behind members, keeping an eye on each one of them.",
                        style: TextStyle(
                            fontFamily: 'Itim',
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.black
                        )
                    )
                  ]
              ),
              ),
            ),
            Container(
              child: Image.asset(
                'assets/adhit.jpg',
                fit: BoxFit.scaleDown,),
              margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: RichText(text: TextSpan(
                  text: 'HRD  ',
                  style: TextStyle(
                      fontFamily: 'Michroma',
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.black
                  ),
                  children: [
                    TextSpan(
                        text: 'Rtr.Adhit Nair ',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: Colors.black
                        )
                    ),
                    TextSpan(
                        text: "\n\nRotex member and a sports enthusiast. His playful nature is gonna help him connect with the members. He understands people and will design strategies to get more people.\n\n",
                        style: TextStyle(
                            fontFamily: 'Itim',
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.black
                        )
                    )
                  ]
              ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
