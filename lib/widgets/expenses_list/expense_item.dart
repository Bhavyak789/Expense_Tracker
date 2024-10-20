import 'package:expense_app/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});
  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(expense.title, style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 4),
            Row(
              children: [
                Text('Rs.${expense.amount.toStringAsFixed(2)}'),
                const Spacer(),
                Icon(categoryIcons[expense.category]),
                const SizedBox(width: 15),
                Text(expense.formattedDate)
              ],
            )
          ],
        ),
      ),
    );
  }
}
