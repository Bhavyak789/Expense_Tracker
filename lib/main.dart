import 'package:expense_app/widgets/expenses.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      ///theme: ThemeData().copyWith(useMaterial3: true, scaffoldBackgroundColor: Colors.white70),
      theme: ThemeData.dark(useMaterial3: true),
      home: const Expenses(),
    ),
  );
}
