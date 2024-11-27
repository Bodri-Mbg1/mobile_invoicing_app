import 'package:flutter/material.dart';

class ScreenIntro2 extends StatelessWidget {
  const ScreenIntro2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff07313A),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 150),
            Container(
              height: 400,
              width: 400,
              color: Color(0xff07313A),
              child: Image.asset(
                'assets/img/ingame into.png',
                height: 350,
                width: 350,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 70),
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
