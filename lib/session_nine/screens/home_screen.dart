
import 'package:flutter/material.dart';
import 'package:session_7_flutter_hult/session_nine/screens/details_screen.dart';
import 'package:session_7_flutter_hult/session_nine/screens/fourth_screen.dart';
import 'package:session_7_flutter_hult/session_nine/screens/secoend_screen.dart';
import 'package:session_7_flutter_hult/session_nine/screens/third_screen.dart';

import '../../session_eight/widgets/buttons_widget.dart';

// Part One - Navigation and Routing
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeBody();
  }
}



class HomeBody extends StatelessWidget {

  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Welcome to the Home Screen",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          // Pushing to a new screen using Navigator.push
          ButtonsWidgets(
            name: "Go to Second Screen",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const SecondScreen();
                  },
                ),
              );
            },
            buttonType: "ElevatedButton",
          ),
          const SizedBox(height: 16),
          // Pushing to a new screen using Navigator.pushReplacement
          ButtonsWidgets(
            name: "Go to Third Screen",
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const ThirdScreen();
                  },
                ),
              );
            },
            buttonType: "ElevatedButton",
          ),
          const SizedBox(height: 16),
          // Pushing to a new screen using Navigator.pushNamed
          ButtonsWidgets(
            name: "Go to Fourth Screen",
            onTap: () {
              Navigator.pushNamed(context, FourthScreen.routeName);
            },
            buttonType: "ElevatedButton",
          ),
          SizedBox(height: 16),
          // Pushing to a new screen and passing data
          ButtonsWidgets(
            name: "Go to Details Screen with Data",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const DetailsScreen(data: "Hello from Home Screen!");
                  },
                ),
              );
            },
            buttonType: "ElevatedButton",
          ),
        ],
      ),
    );
  }
}
