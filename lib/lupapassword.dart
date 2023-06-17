import 'package:flutter/material.dart';
import 'package:myancotfix/login.dart';
import 'package:myancotfix/verifikasilupapassword.dart';

class EmailLupaPassword extends StatefulWidget {
  @override
  _EmailLupaPasswordState createState() => _EmailLupaPasswordState();
}

class _EmailLupaPasswordState extends State<EmailLupaPassword> {
  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Color(0xFFA4BE7B),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) => LoginScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                'Lupa Password',
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
            ),
            SizedBox(height: 60.0),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {
                // Fungsi untuk mengirim email reset password
                sendResetPasswordEmail();
              },
              child: const Text(
                'Kirim Email',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              style: ElevatedButton.styleFrom(
                  primary: const Color(0xffFF8E4F),
                  padding: const EdgeInsets.symmetric(
                      vertical: 18.0, horizontal: 100),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0))),
            ),
          ],
        ),
      ),
    );
  }

  void sendResetPasswordEmail() {
    String email = _emailController.text;

    // Validasi email
    if (email.isEmpty) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Kesalahan'),
            content: Text('Masukkan Alamat Email'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
      return;
    }

    // Lakukan proses pengiriman email reset password
    // ...

    // Tampilkan dialog berhasil mengirim email
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Sukses'),
          content:
              Text('Email untuk mengatur ulang kata sandi Anda telah dikirim'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => VerifyCodePage(),
      ),
    );
  }
}
