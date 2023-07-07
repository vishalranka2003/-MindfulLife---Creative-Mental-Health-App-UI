// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:learn/utils/emoticon_face.dart';
import 'package:learn/utils/exerciseField.dart';
import 'package:learn/MenuPage.dart';
import 'package:learn/UserPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi Vishal ! ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          "11.03.2003",
                          style: TextStyle(
                            color: Colors.blue[100],
                          ),
                        )
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[600],
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.blue[100],
                      ),
                      Text(
                        "Search",
                        style: TextStyle(
                          color: Colors.blue[100],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "How do you feel ?",
                      style: TextStyle(
                        color: Colors.blue[200],
                      ),
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        EmoticonFace(emoji: '😣'),
                        SizedBox(height: 10),
                        Text(
                          "Bad",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        EmoticonFace(emoji: '😌'),
                        SizedBox(height: 10),
                        Text(
                          "Fine",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        EmoticonFace(emoji: '😊'),
                        SizedBox(height: 10),
                        Text(
                          "Good",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        EmoticonFace(emoji: '🥰'),
                        SizedBox(height: 10),
                        Text(
                          "Excellent",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 25, left: 25, right: 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              child: Center(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Exercises",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        Icon(Icons.more_horiz),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Expanded(
                        child: ListView(
                      children: [
                        Exercise(
                          color: Colors.amber,
                          icon: Icons.favorite,
                          title: "Sleeping Exercise",
                          number_of_exercise: "15",
                        ),
                        Exercise(
                          color: Colors.orange,
                          icon: Icons.sports_gymnastics,
                          title: "Reading Exercise",
                          number_of_exercise: "15",
                        ),
                        Exercise(
                          color: Colors.blue,
                          icon: Icons.sports,
                          title: "Sleeping Exercise",
                          number_of_exercise: "15",
                        ),
                        Exercise(
                          color: Colors.red,
                          icon: Icons.sports_basketball,
                          title: "Sleeping Exercise",
                          number_of_exercise: "15",
                        ),
                        Exercise(
                          color: Colors.green,
                          icon: Icons.sports_golf,
                          title: "Sleeping Exercise",
                          number_of_exercise: "15",
                        ),
                        Exercise(
                          color: Colors.pink,
                          icon: Icons.sports_tennis,
                          title: "Sleeping Exercise",
                          number_of_exercise: "15",
                        ),
                      ],
                    ))
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  
  }
}
