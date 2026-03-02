
import 'package:flutter/material.dart';
import 'package:session_7_flutter_hult/session_eight/widgets/buttons_widget.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Second Screen",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: ButtonsWidgets(
          name: "Go Back to Home Screen",
          onTap: () {
            Navigator.pop(context);
          },
          buttonType: "ElevatedButton",
        ),
      ),
    );
  }
}
