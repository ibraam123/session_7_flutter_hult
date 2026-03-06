import "package:flutter/material.dart";
import "package:session_7_flutter_hult/session_nine/tasks/models/task_model.dart";
import "package:session_7_flutter_hult/session_nine/tasks/widgets/titile_app_bar.dart";

class TaskDetails extends StatelessWidget {
  const TaskDetails({super.key , required this.taskModel});
  final TaskModel taskModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: TitleAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center ,
            children: [
              Text(
                "Title: ${taskModel.text}",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                "Status: ${taskModel.isDone! ? "Completed" : "Not Completed"}",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
