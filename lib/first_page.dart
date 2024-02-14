import 'package:flutter/material.dart';
import 'package:tourism_app/home_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://lp-cms-production.imgix.net/2019-06/iStock_000026994380XLarge.jpg?fit=crop&q=40&sharp=10&vib=20&auto=format&ixlib=react-8.6.4'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Positioned(
              top: 10.0,
              left: 10.0,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 40),
                child: Text(
                  'Explore',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 2,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 3.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 10.0,
              left: 10.0,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 70),
                child: Text(
                  ' The Real World',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 2,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 3.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
                bottom: 10,
                left: 138,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ));
                  },
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(color: Colors.white, width: 2),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(30),
                        right: Radius.circular(30),
                      ),
                    ),
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                  child: const Text(
                    'Let\'s Go',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
