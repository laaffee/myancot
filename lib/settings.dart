import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pengaturan'),
        backgroundColor: Color(0xffA4BE7B),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pengaturan Umum',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notifikasi'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // TODO: Implement fungsi pengaturan notifikasi
              },
            ),
            ListTile(
              leading: Icon(Icons.language),
              title: Text('Bahasa'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // TODO: Implement fungsi pengaturan bahasa
              },
            ),
            Divider(),
            Text(
              'Pengaturan Akun',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Edit Profil'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // TODO: Implement fungsi edit profil
              },
            ),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text('Ganti Password'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // TODO: Implement fungsi ganti password
              },
            ),
          ],
        ),
      ),
    );
  }
}
