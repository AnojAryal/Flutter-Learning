import 'package:flutter/material.dart';

class FirstClass extends StatefulWidget {
  const FirstClass();

  @override
  State<StatefulWidget> createState() {
    return FirstClassState();
  }
}

class FirstClassState extends State<FirstClass> {
  textcard(String text) {
    return Container(
      height: 50,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(child: Text(text)),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search, color: Colors.black),
                      SizedBox(width: 8.0),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search Here',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  textcard("text1"),
                  SizedBox(width: 8.0),
                  textcard("text2"),
                  SizedBox(width: 8.0),
                  textcard("text3"),
                ],
              ),
              SizedBox(height: 16.0),

              // New Container with Text and Star Icons
              Container(
                width: size.width * 0.9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                  children: [
                    Text(
                      "Food Home Delivery",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left, // Align text to the left
                    ),
                    SizedBox(height: 8.0), // Add vertical spacing

                    // New Row for Star Icons
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 24,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 24,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 24,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 24,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 24,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
