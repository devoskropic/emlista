import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:emlista/domain/providers/base_provider.dart';

class ListTiles extends StatelessWidget {
  final String title;
  const ListTiles({super.key, this.title="task test"});

  @override
  Widget build(BuildContext context) {
    var tileState = context.watch<BaseProvider>();

    if (tileState.isDone) {
      return const SizedBox.shrink(); // Hide the tile when done
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.teal.shade200,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text(title),
      ),
    );
  }
}
