
import 'package:flutter/material.dart';
import 'package:session_7_flutter_hult/session_eight/widgets/buttons_widget.dart';
import 'package:session_7_flutter_hult/session_nine/screens/main_screen.dart';



class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Third Screen",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: ButtonsWidgets(
          name: "Go Back to Home Screen",
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const MainScreen();
                },
              ),
            );
          },
          buttonType: "ElevatedButton",
        ),
      ),
    );
  }
}
