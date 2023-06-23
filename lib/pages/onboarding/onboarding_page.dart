import 'package:flutter/material.dart';
import 'package:git/pages/search/search_page.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final box = Hive.box('');
    final pages = [
      Container(
        color: Colors.pink[50],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/git1.jpg',
              height: size.height * .5,
              width: size.width,
            ),
            const Column(
              children: [
                Text(
                  'Github Search',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  'Search a Github user and get the details',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 90,
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        color: Colors.cyan[300],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/git2.jpg',
              height: size.height * .5,
              width: size.width,
            ),
            const Column(
              children: [
                Text(
                  'Github Repos',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'Get all the the Github repos in an instance',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black54),
              onPressed: () {
                box.put('introduction', false);
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const SearchPage(),
                  ),
                );
              },
              child: const Text('Get Started'),
            ),
          ],
        ),
      ),
    ];

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
              slideIconWidget: const Icon(Icons.arrow_back_ios),
              enableSideReveal: true,
              enableLoop: false,
              pages: pages),
        ],
      ),
    );
  }
}
