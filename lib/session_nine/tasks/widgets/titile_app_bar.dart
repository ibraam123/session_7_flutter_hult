import 'package:flutter/material.dart';


class TitleAppBar extends StatelessWidget {
  const TitleAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "Task",
        style: TextStyle(
          fontSize: 24,
          color: Colors.grey,
          fontWeight: FontWeight.bold,
        ),
        children: [
          TextSpan(
            text: "Manger",
            style: TextStyle(
              fontSize: 24,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
