import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import 'package:emlista/domain/providers/base_provider.dart';

class TaskWidget extends StatelessWidget {
  final String title;
  // final DateTime date;
  // final String creator;
  // final VoidCallback onDetailView;
  // final VoidCallback onPay;
  const TaskWidget({super.key, required this.title});
  // const TaskWidget({super.key, required this.title, required this.date, required this.creator});

  @override
  Widget build(BuildContext context) {
    var taskState = context.watch<BaseProvider>();

    if (taskState.isDone) {
      return const SizedBox.shrink(); // Hide the tile when done
    }

    return GestureDetector(
      key: super.key,
      onTap: () {
        debugPrint("Tile tapped, $key");
      },
      child:  Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.teal.shade200,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: ListTile(
            leading: Checkbox(
              value: taskState.isDone,
              onChanged: (bool? value) {
                taskState.toggleDone();
              }
            ),
            title: Text(title),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(DateFormat.yMMMd().format(DateTime.now())),
                const SizedBox(width: 5.0),
                const Text("by: Diego"),
              ],
            ),
            trailing: IconButton(
              iconSize: 28,
              onPressed: (){ debugPrint("Button tapped");},
              icon: const Icon(Icons.request_quote_outlined),
            ),
          ),
        ),
      ),
    );
  }
}
