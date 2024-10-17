import 'package:expense_app/models/expense.dart';
//import 'package:expense_app/widgets/expenses.dart';
import 'package:expense_app/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatelessWidget {
  ExpenseList(
      {super.key, required this.expenses, required this.onRemovedExpense});

  final List<Expense> expenses;
  void Function(Expense expense) onRemovedExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => Dismissible(
          key: ValueKey(expenses[index]),
          child: ExpenseItem(expenses[index]),
          onDismissed: (direction) {
            onRemovedExpense(
              expenses[index],
            );
          }),
    );
  }
}
