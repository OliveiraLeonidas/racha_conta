import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:uuid/uuid.dart';

final formatter = DateFormat.yMd();

const uuid = Uuid();

enum Category {
  comida,
  viagem,
  lazer,
  trabalho,
  combustivel,
  moradia,
  reparos,
}

const categoryIcons = {
  Category.combustivel: LineAwesomeIcons.gas_pump,
  Category.comida: Icons.lunch_dining_rounded,
  Category.lazer: LineAwesomeIcons.gamepad,
  Category.moradia: LineAwesomeIcons.home,
  Category.reparos: CupertinoIcons.wrench_fill, // ou LineAwesomeIcons.tools
  Category.trabalho:
      CupertinoIcons.briefcase_fill, // ou LineAwesomeIcons.briefcase
  Category.viagem:
      CupertinoIcons.airplane, // ou LineAwesomeIcons.plane_departure
};

class ExpenseModel {
  ExpenseModel({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
    required this.description,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;
  final String description;

  String get formattedDate {
    return formatter.format(date);
  }
}

//* Agrupara os dados de forma resumida
//* Agrupa os dados de mesma categoria
class ExpenseBucket {
  ExpenseBucket({required this.category, required this.expenses});

  ExpenseBucket.forCategory(List<ExpenseModel> allExpanses, this.category)
      : expenses = allExpanses
            .where(
              (expense) => expense.category == category,
            )
            .toList();

  final Category category;
  final List<ExpenseModel> expenses;

  double get totalExpenses {
    double sum = 0;

    for (final expense in expenses) {
      //* sum = sum + expense.amount
      //* mesma função, escrita de formas diferentes
      sum += expense.amount;
    }

    return sum;
  }
}
