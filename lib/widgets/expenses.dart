import 'package:expense_app/widgets/chart/chart.dart';
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

  void _addExpenseOverlay() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (ctx) => NewExpense(onAddExpense: _addExpense),
    );
  }

  void _addExpense(Expense expense) {
    setState(
      () {
        _registeredExpenses.add(expense);
      },
    );
  }

  void _removeExpense(Expense expense) {
    final expenseIndex = _registeredExpenses.indexOf(expense);
    setState(
      () {
        _registeredExpenses.remove(expense);
      },
    );
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 3),
        content: const Text('Expense removed'),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            setState(
              () {
                _registeredExpenses.insert(expenseIndex, expense);
              },
            );
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget mainContent = const Center(
      child: Text(
        'No expenses found. \nTap on " + " icon to add new expense',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20),
      ),
    );
    if (_registeredExpenses.isNotEmpty) {
      mainContent = ExpenseList(
        expenses: _registeredExpenses,
        onRemovedExpense: _removeExpense,
      );
    }
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Expense Tracker',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              onPressed: _addExpenseOverlay,
              icon: const Icon(
                Icons.add,
                size: 32,
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Chart(expenses: _registeredExpenses),
            //const SizedBox(height: 16),
            //Text('Total Expense :  $total'),
            Expanded(child: mainContent)
          ],
        ),
      ),
    );
  }
}
