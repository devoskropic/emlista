import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:emlista/presentation/main_app.dart';
import 'package:emlista/domain/providers/base_provider.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => BaseProvider(),
        ),
      ],
      child: const MainApp(),
    ),
  );
  // runApp(const MainApp());
}