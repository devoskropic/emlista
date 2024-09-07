import 'package:flutter/material.dart';
import 'package:emlista/presentation/themes/main_theme.dart';
import 'package:emlista/presentation/screens/mainboard/mainboard.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  final appTitle = "✅ To-Do App!";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: mainTheme(),
      home: Mainboard(title: appTitle),
      debugShowCheckedModeBanner: false,
    );
  }
}
