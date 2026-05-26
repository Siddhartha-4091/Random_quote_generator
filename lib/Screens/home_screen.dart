import 'dart:math';

import 'package:flutter/material.dart';

class QuoteScreen extends StatefulWidget {
  const QuoteScreen({super.key});

  @override
  State<QuoteScreen> createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<QuoteScreen> {
  // ignore: non_constant_identifier_names
  int CurrentIndex = 0;
  final List<Map<String, int>> _nums = [
    {"Sagar": 101, "Gaurav": 102, "Neha": 103}, // List index = 0
    {"Sagar": 104, "Sunita": 105, "Anju": 106}, // List index = 1
    {"Vishal": 107, "Ravi": 108, "disu": 109}, // List index = 2
    {"Saurav": 110, "Siddhartha": 111, "Priyanshu": 112}, // List index = 3
  ];

  int currentIndexs = 1;
  var random = Random();
  final List<Map<String, String>> _genders = [
    {"Sagar": "male", "Gaurav": "male", "Neha": "female"}, // List index = 0
    {"Priya": "female", "Sunita": "female", "Anju": "female"}, // List index = 1
    {"Vishal": "male", "Ravi": "male", "dishu": "male"}, // List index = 2
    {
      "Saurav": "male",
      "Siddhartha": "male",
      "Priyanshu": "male",
    }, // List index = 3
  ];

  int quoteIndex = 0;
  var randomQuote = Random();
  final List<Map<String, String>> _quotes = [
    {
      "Sagar": "The only way to do great work is to love what you do.",
      "Gaurav":
          "Success is not final, failure is not fatal: It is the courage to continue that counts.",
    }, // List index = 0
    {
      "Sagar": "Don't watch the clock; do what it does. Keep going.",
      "Gaurav":
          "The future belongs to those who believe in the beauty of their dreams.",
    }, // List index = 1
    {
      "Sagar": "The best way to predict the future is to invent it.",
      "Gaurav": "You miss 100% of the shots you don't take.",
    }, // List index = 2
    {
      "Sagar":
          "The harder you work for something, the greater you'll feel when you achieve it.",
      "Gaurav": "Dream big and dare to fail.",
    }, // List index = 3
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 10, 167, 125),
      appBar: AppBar(
        title: Text(
          'Random Quote Generator',
          style: TextStyle(
            color: const Color.fromARGB(255, 1, 16, 14),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 8, 58, 47),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _nums[CurrentIndex]["Sagar"].toString(),
              style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              _genders[currentIndexs]["Priya"].toString(),
              style: TextStyle(
                color: const Color.fromARGB(255, 38, 33, 33),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  // Logic to generate a new quote will go here
                  CurrentIndex = random.nextInt(_nums.length);
                  currentIndexs = random.nextInt(_genders.length);
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 4, 55, 39),
                padding: EdgeInsets.only(left: 20, right: 20),
              ),
              child: Text(
                'Generate New Quote',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),

            Text(
              _quotes[quoteIndex]["Sagar"].toString(),
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 38, 33, 33),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),

            OutlinedButton(
              onPressed: () {
                setState(() {
                  // Logic to share the quote will go here
                  quoteIndex = randomQuote.nextInt(_quotes.length);
                });
              },
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: const Color.fromARGB(255, 4, 55, 39)),
                padding: EdgeInsets.only(left: 20, right: 20),
              ),

              child: Text(
                'Share Quote',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 4, 55, 39),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
