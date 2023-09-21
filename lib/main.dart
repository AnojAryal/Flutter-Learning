import "package:flutter/material.dart";

import "firstclass.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstClass(),
    );
  }
}
