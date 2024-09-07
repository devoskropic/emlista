import 'package:flutter/material.dart';

import 'package:emlista/presentation/screens/home/widgets/list_tiles.dart';

class HomeTest extends StatelessWidget {
  const HomeTest({super.key});

  @override
  Widget build(BuildContext context) {
    return ReorderableListView(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
      children: const [
        // for (final task in tasks)
          ListTiles(
            key: ValueKey(0),
            title: "Holiwiss",
          ),
      ],
      onReorder: (oldIndex, newIndex) => (){},
    );
  }
}
