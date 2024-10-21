import 'package:expense_app/widgets/expenses.dart';
//import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: Colors.amber,
  primary: Colors.amber,
  secondary: Colors.amberAccent,
);

var kDarkColorScheme = ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: Colors.amber.shade400,
    primary: Colors.amber);

void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkColorScheme,
        //iconTheme: IconThemeData(color: Colors.black),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amber,
            foregroundColor: Colors.black, //kDarkColorScheme.primaryContainer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: Colors.amber, foregroundColor: Colors.black),
        cardTheme: const CardTheme().copyWith(
          color: kDarkColorScheme.primaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        snackBarTheme: const SnackBarThemeData(
            backgroundColor: Colors.black,
            contentTextStyle: TextStyle(color: Colors.amber),
            actionTextColor: Colors.amber),
      ),
      theme: ThemeData().copyWith(
        //useMaterial3: true,
        colorScheme: kColorScheme,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: Colors.amberAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8))),
        ),
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: Colors.amberAccent,
          //foregroundColor: Colors.amberAccent,
        ),
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
      themeMode: ThemeMode.system,
      home: const Expenses(),
    ),
  );
}
