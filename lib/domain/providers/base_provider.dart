import 'package:emlista/presentation/screens/history/task_history.dart';
import 'package:emlista/presentation/screens/home/home_test.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/foundation.dart';
// import 'dart:async';

// import 'app_state.dart';

class BaseProvider extends ChangeNotifier {
  BaseProvider();

  // final AppState _state = const AppState.loading();
  // AppState get state => _state;

  // bottomNavbar index / body
  int currentIndex = 0;
  Widget mainboardBody = const HomeTest();

  mainboardNavbarIndexChange(int index) {
    currentIndex = index;
    debugPrint('index: $index');
    switch (currentIndex) {
      case 0:
        mainboardBody = const HomeTest();
        break;
      case 1:
        mainboardBody = const TaskHistory();
        break;
    }
    notifyListeners();
  }

  // Tile checkbox checked
  bool _isDone = false;
  bool get isDone => _isDone;

  void toggleDone() {
    _isDone = !_isDone;
    notifyListeners();
  }

  // New task floatingActionButton tapped
  addTaskPressed(){
    debugPrint('Adding task');
  }
}
