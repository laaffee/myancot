import 'package:flutter/material.dart';
import 'package:myancotfix/screens/dropdown_button.dart';
import 'package:myancotfix/screens/home_screen.dart';
import 'package:myancotfix/screens/scanqr_screen.dart';

class PilihJurusan extends StatefulWidget {
  const PilihJurusan({super.key});

  @override
  State<PilihJurusan> createState() => _PilihJurusanState();
}

class _PilihJurusanState extends State<PilihJurusan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'JURUSAN ANGKOT',
        ),
        centerTitle: true,
        backgroundColor: const Color(0xffA4BE7B),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ));
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(40, 40, 40, 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pilih Jurusan Angkot',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            DropDownJurusan1(),
            SizedBox(
              height: 20,
            ),
            DropDownJurusan2(),
            SizedBox(
              height: 20,
            ),
            DropDownJurusan3(),
            SizedBox(
              height: 20,
            ),
            DropDownJurusan4(),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ScanQr(),
                    ));
              },
              child: const Text(
                'Pilih',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: const Color(0xffA4BE7B),
                minimumSize: const Size(350.0, 60.0),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                textStyle: TextStyle(fontSize: 15.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
