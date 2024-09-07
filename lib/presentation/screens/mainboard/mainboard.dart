import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:emlista/domain/providers/base_provider.dart';

class Mainboard extends StatelessWidget {
  final String title;
  const Mainboard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    // All previous setters
    var appState = context.watch<BaseProvider>();

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          appBar: AppBar(
            title: title != "" ? Text(title) : const Text("Enlista 😎"),
            centerTitle: true,
          ),
          // body: const HomeTest(),
          body: appState.mainboardBody,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: appState.currentIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.task_alt),
                label: 'Tasks',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.history_toggle_off),
                label: 'History',
              ),
            ],
            onTap: (value) => appState.mainboardNavbarIndexChange(value),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {appState.addTaskPressed();},
          ),
        );
      },
    );
  }
}
