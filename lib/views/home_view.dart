import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/k.png')),
          gradient: RadialGradient(
            colors: [
              Color.fromARGB(255, 75, 50, 124), // Lighter Purple at the center
              Color.fromARGB(255, 28, 20, 46), // Darker Purple at the edges
            ],
            center: Alignment.center, // Center the gradient
            radius: 0.8, // Adjust the spread of the gradient
          ),
        ),
        padding:
            const EdgeInsets.only(left: 10, top: 74, bottom: 60, right: 10),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Good morning,',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Gilroy',
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Text(
              'New topic is waiting',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Gilroy',
                fontSize: 24,
              ),
            ),
            // Container(
            //   margin: EdgeInsets.only(left: 77, right: 66, top: 85),
            //   child: Image.asset(
            //     'assets/images/k.png',
            //     width: 200,
            //   ),
            // ),
            Expanded(child: SizedBox()),
            Center(
              child: SizedBox(
                width: 300,
                height: 47,
                // decoration: ,
                child: ElevatedButton(
                  onPressed: () {
                    context.go('/question1View');
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9),
                    ),
                  ),
                  child: const Text(
                    'Start Quiz',
                    style: TextStyle(
                      color: Color(0xff2B0063),
                      fontFamily: 'Gilroy',
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
