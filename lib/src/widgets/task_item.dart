import 'package:flutter/material.dart';
import 'package:task_app/src/helpers/parse_data.dart';
import 'package:task_app/src/models/task.dart';
import 'package:task_app/src/pages/detail_task_page.dart';
import 'package:task_app/src/theme/custom_color_scheme.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({Key? key, required this.task}) : super(key: key);
  final Task task;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () => Navigator.pushNamed(
        context,
        DetailTaskPage.routeName,
        arguments: task,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        width: size.width,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.colorTaskCard,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                blurRadius: 15,
                spreadRadius: 10,
                color: Theme.of(context).canvasColor,
              )
            ]),
        margin: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  task.name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Expanded(child: SizedBox()),
                Text(
                  "${task.createdAt!.day}/${task.createdAt!.month}/${task.createdAt!.year}",
                  style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            Text(
              task.description,
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w500,
                fontSize: 17,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Container(
                  height: 13,
                  width: 13,
                  color: task.state.colorState,
                ),
                const SizedBox(width: 15),
                Text(ParseData().stateToText(task.state.nameState, context))
              ],
            )
          ],
        ),
      ),
    );
  }
}
