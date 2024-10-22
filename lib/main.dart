import 'package:expense_app/widgets/expenses.dart';
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
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amber,
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: Colors.amber, foregroundColor: Colors.black),
        cardTheme: const CardTheme().copyWith(
          color: const Color.fromARGB(255, 63, 60, 43),
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        snackBarTheme: const SnackBarThemeData(
            backgroundColor: Colors.black,
            contentTextStyle: TextStyle(color: Colors.amberAccent),
            actionTextColor: Colors.amberAccent),
        textTheme: ThemeData().textTheme.copyWith(
              titleMedium: const TextStyle(color: Colors.white, fontSize: 16),
              bodyMedium: const TextStyle(color: Colors.white),
              bodyLarge: const TextStyle(color: Colors.white),
            ),
        dialogTheme: const DialogTheme(
            titleTextStyle: TextStyle(
              color: Colors.amberAccent,
              fontSize: 20,
            ),
            contentTextStyle: TextStyle(color: Colors.white)),
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
        ),
        cardTheme: const CardTheme().copyWith(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
      ),
      themeMode: ThemeMode.system,
      home: const Expenses(),
    ),
  );
}
