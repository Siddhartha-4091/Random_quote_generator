import 'package:flutter/material.dart';

class QuoteScreen extends StatefulWidget {
  const QuoteScreen({super.key});

  @override
  State<QuoteScreen> createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<QuoteScreen> {
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
              '"Push yourself because no one else is going to do it for you."',
              style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              '-Unknown',
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
                // Logic to generate a new quote will go here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 38, 33, 33),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
              child: Text(
                'Generate New Quote',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
