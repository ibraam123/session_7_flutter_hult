import 'package:flutter/material.dart';

import '../logic/task_repo.dart';
import '../widgets/custom_task_continer.dart';

/*
class HomeScreenTask extends StatelessWidget {
  const HomeScreenTask({super.key, required this.taskRepo});
  final TaskRepo taskRepo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: TitleAppBar(),
      ),
      body: HomeBodyTask(taskRepo: taskRepo),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) {
                return AddedTaskScreen(taskRepo: taskRepo,);
              },
            ),
          );
        },
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(36),
        ),
        child: Icon(Icons.add, size: 34),
      ),
    );
  }
}
*/
class HomeBodyTask extends StatefulWidget {
  const HomeBodyTask({super.key, required this.taskRepo});
  final TaskRepo taskRepo;

  @override
  State<HomeBodyTask> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBodyTask> {
  @override
  Widget build(BuildContext context) {
    return widget.taskRepo.tasks.isNotEmpty? ListView.builder(
      padding: EdgeInsetsGeometry.all(16),
      itemCount: widget.taskRepo.tasks.length,
      itemBuilder: (context, index) {
        return CustomTaskContainer(task: widget.taskRepo.tasks[index] , taskRepo: widget.taskRepo,);
      },
    ): Center(
      child: Text(
        "No Tasks Yet",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.redAccent,
        ),
      ),
    );
  }
}
