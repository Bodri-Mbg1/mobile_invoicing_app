import 'package:flutter/material.dart';

class ScreenIntro1 extends StatelessWidget {
  const ScreenIntro1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff07313A),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            SizedBox(height: 150),
            Container(
              height: 400,
              width: 400,
              color: Color(0xff07313A),
              child: Image.asset('assets/img/i1.png'),
            ),
            const SizedBox(height: 85),
            Text(
              'Create Invoices\nFaster and Easier',
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'kontora-semi-bold',
                letterSpacing: -1.0,
                height: 1,
              ),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 10), // Espacement entre les textes
            Text(
              'Simplify billing invoices. Through an automated\npayment system, payments will be faster and\neasier',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'kontora-semi-bold',
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
