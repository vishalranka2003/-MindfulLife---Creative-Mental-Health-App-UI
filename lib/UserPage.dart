// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:learn/utils/category.dart';
import 'package:learn/utils/consultants.dart';

import 'package:learn/utils/emoticon_face.dart';
import 'package:learn/utils/exerciseField.dart';
import 'package:learn/MenuPage.dart';
import 'package:learn/UserPage.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
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
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 25, left: 25, right: 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                color: Colors.grey[300],
              ),
              child: Center(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Category",
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
                    Column(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              categoryItem(
                                title: "Relationship",
                                color: Colors.pinkAccent,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              categoryItem(
                                title: "Career",
                                color: Colors.lightBlue,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              categoryItem(
                                title: "Education",
                                color: Colors.orange,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              categoryItem(
                                title: "Other",
                                color: Colors.green,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Consultants",
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
                          Consultant(
                            color: Colors.red,
                            icon: Icons.add_alert,
                            title: "Dr.Shaenoy",
                            number_of_exercise: "Expert in data science",
                            isLiked: false,
                          ),
                          Consultant(
                            color: Colors.blue,
                            icon: Icons.add_alert,
                            title: "Dr.Shaenoy",
                            number_of_exercise: "Expert in data science",
                            isLiked: true,
                          ),
                          Consultant(
                            color: Colors.green,
                            icon: Icons.add_alert,
                            title: "Dr.Shaenoy",
                            number_of_exercise: "Expert in data science",
                            isLiked: true,
                          ),
                          Consultant(
                            color: Colors.purple,
                            icon: Icons.add_alert,
                            title: "Dr.Shaenoy",
                            number_of_exercise: "Expert in data science",
                            isLiked: true,
                          )
                        ],
                      ),
                    )
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
