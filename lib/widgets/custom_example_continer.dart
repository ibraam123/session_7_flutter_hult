import 'package:flutter/material.dart';

class CustomExampleContiner extends StatelessWidget {
  const CustomExampleContiner({
    super.key,
    this.width = 150,
    this.height = 150,
    this.color = Colors.blueAccent,
  });
  final double? width;
  final double? height;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: color,
      child: const Center(
        child: Text(
          'Flutter',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
