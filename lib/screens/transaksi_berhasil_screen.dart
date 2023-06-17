import 'package:flutter/material.dart';
import 'package:myancotfix/screens/home_screen.dart';

class TransaksiBerhasil extends StatefulWidget {
  const TransaksiBerhasil({super.key});

  @override
  State<TransaksiBerhasil> createState() => _TransaksiBerhasilState();
}

class _TransaksiBerhasilState extends State<TransaksiBerhasil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Transaksi Berhasil',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Image.asset(
                  'assets/success.jpg',
                  scale: 2,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ));
                },
                child: const Text('Lanjutkan'),
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xffFF8E4F),
                  minimumSize: const Size(300.0, 60.0),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  textStyle: TextStyle(fontSize: 20.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
