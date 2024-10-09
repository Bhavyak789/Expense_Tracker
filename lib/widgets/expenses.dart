import 'package:expense_app/widgets/expenses_list/expense_list.dart';
import 'package:expense_app/models/expense.dart';
import 'package:expense_app/widgets/new_expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'Flutter Course',
        amount: 499,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: 'Bread',
        amount: 15,
        date: DateTime.now(),
        category: Category.food)
  ];

  void _AddExpense() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => NewExpense(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Expense Tracker'),
          backgroundColor: Colors.amber,
          actions: [
            IconButton(
              onPressed: _AddExpense,
              icon: const Icon(
                Icons.add,
                size: 30,
              ),
            )
          ],
        ),
        body: Column(
          children: [
            const Text(
              'CHART',
              style: TextStyle(fontSize: 20),
            ),
            Expanded(child: ExpenseList(expenses: _registeredExpenses))
          ],
        ),
      ),
    );
  }
}
