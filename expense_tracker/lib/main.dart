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
          appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: kColorscheme.onPrimaryContainer,
            foregroundColor: kColorscheme.primaryContainer,
          ),
          cardTheme: const CardTheme().copyWith(
            color: kColorscheme.secondaryContainer,
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: kColorscheme.primaryContainer,
            ),
          ),
          textTheme: ThemeData().textTheme.copyWith(
                titleLarge: TextStyle(
                  fontWeight: FontWeight.bold, 
                  color: kColorscheme.onSecondaryContainer,
                  fontSize: 16,
                ),
              ),
        ),
        home: const Expenses()),
  );
}
