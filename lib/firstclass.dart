import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstClass extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FirstClassState();
  }
}

class FirstClassState extends State<FirstClass> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: size.width / 1.2,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(15.0)),
                    child: const Row(
                      children: [
                        Icon(Icons.search, color: Colors.black),
                        Text('Search Here')
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
