import 'package:flutter/material.dart';
import 'package:session_7_flutter_hult/session_nine/screens/home_screen.dart';
import 'package:session_7_flutter_hult/session_nine/widgets/cart_view_body.dart';
import 'package:session_7_flutter_hult/session_nine/widgets/profile_view_body.dart';

// Part Two - Bottom Navigation Bar and Drawer
// Bottom Navigation Bar Example with three tabs (Home, Cart, Profile) and a Snackbar to show the selected tab.
// Drawer Example with three items (Home, Cart, Profile) that navigate to the corresponding screens when tapped.
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  List<Widget> screens = [
    HomeScreen(),
    CartViewBody(),
    ProfileViewBody(),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Main Screen",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                "You selected: ${index == 0
                    ? "Home"
                    : index == 1
                    ? "Cart"
                    : "Profile"}",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              backgroundColor: Colors.blueAccent,
              duration: Duration(seconds: 5),
              behavior: SnackBarBehavior.floating,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          );
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              activeIcon: Icon(
                Icons.home_filled,
                color: Colors.blueAccent,
              )
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
            activeIcon: Icon(
              Icons.shopping_cart_checkout,
              color: Colors.blueAccent,
            ),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
              activeIcon: Icon(
                Icons.person_outline,
                color: Colors.blueAccent,
              )
          ),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueAccent),
              child: Text(
                'Navigation Drawer',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                setState(() {
                  _currentIndex = 0;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.shopping_cart),
              title: const Text('Cart'),
              onTap: () {
                setState(() {
                  _currentIndex = 1;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {
                setState(() {
                  _currentIndex = 2;
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}


class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Icon(icon),
        SizedBox(width: 16,),
        Text(
            text
        )
      ],
    );
  }
}

