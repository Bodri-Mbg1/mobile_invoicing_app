import 'package:flutter/material.dart';
import 'package:mobile_invoicing_app/screens/screen2.dart';
import 'package:mobile_invoicing_app/screens/screen_intro/screen_intro1.dart';
import 'package:mobile_invoicing_app/screens/screen_intro/screen_intro2.dart';
import 'package:mobile_invoicing_app/screens/screen_intro/screen_intro3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  PageController pageController = PageController();
  int currentPage = 0; // Page active

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        currentPage =
            pageController.page?.round() ?? 0; // Met à jour la page actuelle
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff07313A),
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            children: const [
              ScreenIntro1(),
              ScreenIntro2(),
              ScreenIntro3(),
            ],
          ),
          Positioned(
            top: 830,
            left: 50,
            child: SmoothPageIndicator(
              controller: pageController,
              count: 3,
              effect: const ScrollingDotsEffect(
                spacing: 4.5,
                activeDotColor: Color(0xff2cd196),
                dotColor: Color(0xff0e524c),
                activeDotScale: 1.0,
                dotWidth: 15.0,
                dotHeight: 5.0,
              ),
            ),
          ),
          Positioned(
            left: 150,
            top: 50,
            child: Image.asset(
              'assets/img/logo1.png',
            ),
          ),
          Positioned(
            top: 800,
            left: 320,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: const Color(0xff2cd196),
                borderRadius: BorderRadius.circular(15),
              ),
              child: IconButton(
                onPressed: () {
                  _handleButtonPress(context);
                },
                icon: const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void _handleButtonPress(BuildContext context) {
    if (currentPage < 2) {
      // Si ce n'est pas la dernière page, passe à la suivante
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      // Si c'est la dernière page, redirige vers Screen2
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Screen2(),
        ),
      );
    }
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
