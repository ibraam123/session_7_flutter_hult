import 'package:flutter/material.dart';

import '../logic/task_repo.dart';
import '../models/task_model.dart';
import '../screens/task_details.dart';

class CustomTaskContainer extends StatefulWidget {
  const CustomTaskContainer({super.key, required this.task, required this.taskRepo});
  final TaskRepo taskRepo;
  final TaskModel task;

  @override
  State<CustomTaskContainer> createState() => _CustomTaskContainerState();
}

class _CustomTaskContainerState extends State<CustomTaskContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withValues(alpha: 0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start ,
              children: [
                Text(
                  widget.task.text,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 8),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return TaskDetails(taskModel: widget.task,);
                        },
                      ),
                    );
                  },
                  child: Text(
                    "See Details",
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            Checkbox(
              value: widget.task.isDone,
              onChanged: (value) {
                widget.task.isDone = value!;
                setState(() {});

                value
                    ? ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      "Task Completed",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    backgroundColor: Colors.blueAccent,
                    duration: Duration(seconds: 2),
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                )
                    : ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      "Task UnCompleted",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    backgroundColor: Colors.redAccent,
                    duration: Duration(seconds: 2),
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                );
              },
              activeColor: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
