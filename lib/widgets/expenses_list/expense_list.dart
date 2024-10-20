import 'package:expense_app/models/expense.dart';
//import 'package:expense_app/widgets/expenses.dart';
import 'package:expense_app/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList(
      {super.key, required this.expenses, required this.onRemovedExpense});

  final List<Expense> expenses;
  final void Function(Expense expense) onRemovedExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => Dismissible(
        background: Container(
          margin: EdgeInsets.symmetric(vertical: 8),
          color: const Color.fromARGB(215, 255, 82, 82),
        ),
        key: ValueKey(expenses[index]),
        child: ExpenseItem(expenses[index]),
        //direction: DismissDirection.startToEnd,
        onDismissed: (direction) {
          onRemovedExpense(expenses[index]);
        },
      ),
    );
  }
}
