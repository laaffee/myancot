import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:myancotfix/screens/transaksi_berhasil_screen.dart';
import 'package:myancotfix/screens/transaksi_screen.dart';

class MasukkanPin extends StatefulWidget {
  const MasukkanPin({super.key});

  @override
  State<MasukkanPin> createState() => _MasukkanPinState();
}

class _MasukkanPinState extends State<MasukkanPin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffA4BE7B),
        title: Image.asset(
          'assets/Myancot.png',
          scale: 55,
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.cancel_outlined,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          onPressed: () {
            Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) => Transaksi(),
                ));
          },
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Masukkan 6 Digit Pin Kamu',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 30,
              ),
              OtpTextField(
                numberOfFields: 6,
                borderColor: Color(0xFF512DA8),
                showFieldAsBox: true,
                onCodeChanged: (String code) {},
                onSubmit: (String verificationCode) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TransaksiBerhasil(),
                      ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
