
import 'package:flutter/material.dart';


class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, this.data});
  final String? data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Details Screen",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Text(data ?? "No Data Passed", style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
