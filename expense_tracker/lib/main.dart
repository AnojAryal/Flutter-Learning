import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';

var kColorscheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);

void main() {
  runApp(
    MaterialApp(
        theme: ThemeData().copyWith(
          useMaterial3: true,
          colorScheme: kColorscheme,
          appBarTheme:const AppBarTheme().copyWith(
            backgroundColor: kColorscheme.onPrimaryContainer,
            foregroundColor: kColorscheme.primaryContainer,
          )
        ),
        home: const Expenses()),
  );
}
