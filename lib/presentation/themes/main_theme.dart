import 'package:flutter/material.dart';

ThemeData mainTheme() {
  return ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
    appBarTheme: AppBarTheme(
      elevation: 2,
      color: Colors.teal.shade200,
      iconTheme: const IconThemeData(color: Colors.black),
      titleTextStyle: const TextStyle(fontSize: 20, color: Colors.black),
    ),
    // Text
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      titleMedium: TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      titleSmall: TextStyle(
        color: Colors.black,
        fontSize: 14,
        fontWeight: FontWeight.w300,
      ),
    ),
    drawerTheme: const DrawerThemeData(
      width: 300,
      // backgroundColor: Colors.white70, //kinda but not all transparent
    ),
    listTileTheme: const ListTileThemeData(
      // selectedColor: Colors.teal.shade800,
      selectedTileColor: Colors.transparent,
    ),
  );
}
