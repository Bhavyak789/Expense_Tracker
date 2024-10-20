import 'dart:ffi';

import 'package:expense_app/widgets/expenses.dart';
//import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: Colors.amber,
  primary: Colors.amber,
  secondary: Colors.amberAccent,
);

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
        //useMaterial3: true,
        colorScheme: kColorScheme,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber,
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8))),
        ),
        appBarTheme:
            const AppBarTheme().copyWith(backgroundColor: Colors.amber),
        cardTheme: const CardTheme().copyWith(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        // textTheme: ThemeData().textTheme.copyWith(
        //       titleMedium: const TextStyle(
        //           fontWeight: FontWeight.bold,
        //           fontSize: 16,
        //           color: Colors.black),
        //       titleLarge: TextStyle(fontWeight: FontWeight.bold),
        //     ),
      ),
      //theme: ThemeData.dark(useMaterial3: true),
      home: const Expenses(),
    ),
  );
}
