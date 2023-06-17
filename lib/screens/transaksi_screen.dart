import 'package:flutter/material.dart';
import 'package:myancotfix/screens/masukkan_pin_screen.dart';
import 'package:myancotfix/screens/pilih_jurusan_screen.dart';

class Transaksi extends StatefulWidget {
  const Transaksi({super.key});

  @override
  State<Transaksi> createState() => _TransaksiState();
}

class _TransaksiState extends State<Transaksi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'DETAIL TRANSAKSI',
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        backgroundColor: Color(0xffA4BE7B),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          onPressed: () {
            Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) => PilihJurusan(),
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
              'Total Pembayaran',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Rp 5.000',
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 36, 35, 35)),
            ),
            SizedBox(
              height: 60,
            ),
            Text(
              'RINCIAN PENERIMA',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 72, 71, 71)),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/Myancot.png',
                      scale: 50,
                    ),
                    Text(
                      '     PT. MYANCOT',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              '                         Jl. Cikopo Selatan No.50',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 160,
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MasukkanPin(),
                    ));
              },
              label: Text('KONFIRMASI & BAYAR     RP 5.000'),
              icon: Icon(Icons.arrow_circle_right_outlined),
              style: ElevatedButton.styleFrom(
                primary: const Color(0xffFF8E4F),
                minimumSize: const Size(350.0, 60.0),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
