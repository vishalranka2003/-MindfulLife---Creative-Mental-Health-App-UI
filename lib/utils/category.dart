import 'package:flutter/material.dart';

class categoryItem extends StatelessWidget {
  final String title;
  final color;
  const categoryItem({
    super.key,
    required this.title,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: color,
        ),
        margin: EdgeInsets.only(bottom: 10),
        height: 75,
        child: Center(child: Text(title)),
      ),
    );
  }
}
