import 'package:flutter/material.dart';
import 'package:myancotfix/login.dart';
import 'package:myancotfix/signup.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200.0,
              height: 150.0,
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  image: AssetImage('images/Myancot.png'),
                ),
              ),
            ), // Ganti dengan path gambar yang sesuai
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffFF8E4F),
                  padding: const EdgeInsets.symmetric(
                      vertical: 18.0, horizontal: 100),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0))),
              child: const Text('Masuk'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignupScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFA4BE7B),
                  padding: const EdgeInsets.symmetric(
                      vertical: 18.0, horizontal: 100),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0))),
              child: const Text('Daftar'),
            ),
          ],
        ),
      ),
    );
  }
}
