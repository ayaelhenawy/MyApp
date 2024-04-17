import 'package:flutter/material.dart';
import 'package:myproject/src/Forgetpassword.dart';
import 'package:myproject/src/Login.dart';
import 'package:myproject/src/Sign Up.dart';

class Inboard extends StatefulWidget {
  const Inboard({Key? key}) : super(key: key);

  @override
  State<Inboard> createState() => _InboardScreenState();
}

class _InboardScreenState extends State<Inboard> {
  final PageController _pageController = PageController();

  void _navigateToLoginPage() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return const LoginScreen();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(115, 150, 155, 150),
      body: PageView(
        controller: _pageController,
        children: [
          _buildPage(
            image: 'assets/images/photo4.webp',
            title: 'Gaming',
            description: 'Gaming with dumbbells lablaaa\nlablaaatany this app',
          ),
          _buildPage(
            image: 'assets/images/photo3.jpg',
            title: 'Gaming',
            description: 'Gaming with dumbbells lablaaa\nlablaaatany this app',
          ),
          _buildPage(
            image: 'assets/images/photo2.jpg',
            title: 'Gaming',
            description: 'Gaming with dumbbells lablaaa\nlablaaatany this app',
          ),
        ],
      ),
    );
  }

  Widget _buildPage(
      {required String image,
      required String title,
      required String description}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 100,
        ),
        Image.asset(
          image,
          width: 500,
          height: 250,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.white, fontSize: 30),
        ),
        Text(
          description,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.white, fontSize: 15),
        ),
        const SizedBox(
          height: 30,
        ),
        MaterialButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return const LoginScreen();
            }));
          },
          child: Container(
            width: 115,
            height: 55,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 88, 86, 86),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: Text(
                'Next',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
