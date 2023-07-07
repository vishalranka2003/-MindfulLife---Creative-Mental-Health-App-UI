// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Consultant extends StatelessWidget {
  final color;
  final String title;
  final String number_of_exercise;
  final icon;
  final bool? isLiked;
  const Consultant({
    super.key,
    required this.color,
    required this.icon,
    required this.title,
    required this.number_of_exercise,
    required this.isLiked,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.blue.shade100, //New
              blurRadius: 5.0,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: color,
                  ),
                  child: Icon(icon, color: Colors.white),
                ),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      number_of_exercise,
                    ),
                  ],
                ),
              ],
            ),
            Icon((isLiked != false) ? Icons.favorite : Icons.favorite_outline),
          ],
        ),
      ),
    );
  }
}
