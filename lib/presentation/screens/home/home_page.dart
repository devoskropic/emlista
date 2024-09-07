import 'package:flutter/material.dart';
// import 'package:emlista/presentation/screens/home/widgets/list_tiles.dart';
import 'package:emlista/presentation/screens/home/widgets/task_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List tasks = ['Michelle', 'Order 2', 'Lobatos'];

  @override
  Widget build(BuildContext context) {
    //return const Center(
      //child: Text('Home Page in press!'),
    //);
    return ReorderableListView(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
        children: [
          for (final task in tasks)
            // ListTiles(
            //   key: ValueKey(task),
            //   title: task,
            // ),
            TaskWidget(key: ValueKey(task), title: task),
        ],
        onReorder: (oldIndex, newIndex) => (){},
    );
  }
}
