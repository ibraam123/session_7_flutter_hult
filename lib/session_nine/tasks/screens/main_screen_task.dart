import 'package:flutter/material.dart';
import 'package:session_7_flutter_hult/session_eight/screens/profile_screen.dart';
import 'package:session_7_flutter_hult/session_nine/tasks/screens/add_screen.dart';
import 'package:session_7_flutter_hult/session_nine/tasks/screens/home_screen_task.dart';
import '../logic/task_repo.dart';
import '../widgets/titile_app_bar.dart';

class MainScreenTask extends StatefulWidget {
  const MainScreenTask({super.key});

  @override
  State<MainScreenTask> createState() => _MainScreenTaskState();
}

class _MainScreenTaskState extends State<MainScreenTask> {
  final TaskRepo taskRepo = TaskRepo();

  late List<Widget> screens = [
    HomeBodyTask(taskRepo: taskRepo),
    AddedTaskScreen(taskRepo: taskRepo),
    ProfileViewBodyTask(),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: TitleAppBar(),
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white ,
        fixedColor: Colors.redAccent ,
        selectedLabelStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home" ,  activeIcon: Icon(Icons.home , color: Colors.red, size: 28,) ),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"  , activeIcon: Icon(Icons.add , color: Colors.red, size: 28,) ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"  , activeIcon: Icon(Icons.person , color: Colors.red, size: 28,) ),
        ],
      ),
    );
  }
}
