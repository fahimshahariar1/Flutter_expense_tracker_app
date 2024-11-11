import 'package:flutter/material.dart';
import 'package:untitled3/widgets/expense_list/expense_list.dart';
import 'package:untitled3/model/expense_data.dart';

class Expense extends StatefulWidget {
  const Expense({super.key});

  @override
  State<Expense> createState() => _ExpenseState();
}

class _ExpenseState extends State<Expense> {
  final List<ExpenseData> _registeredExpenses = [
    ExpenseData(
        title: "Flutter Course",
        amount: 100,
        date: DateTime.now(),
        category: Category.work),
    ExpenseData(
        title: "Movie",
        amount: 50,
        date: DateTime.now(),
        category: Category.leisure),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          const Text("Chart"),
          Expanded(child: ExpenseList(expenses: _registeredExpenses))
        ],
      ),
    );
  }
}
