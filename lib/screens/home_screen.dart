import 'package:flutter/material.dart';
import 'package:myancotfix/screens/history_screen.dart';
import 'package:myancotfix/screens/pilih_jurusan_screen.dart';
import 'package:myancotfix/screens/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // ignore: unused_field
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(), // Ganti dengan halaman yang diinginkan
    HistoryScreen(), // Ganti dengan halaman history
    // ignore: prefer_const_constructors
    ProfileScreen(
      title: '',
    ), // Ganti dengan halaman profile
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Navigasi ke halaman yang sesuai berdasarkan index
    if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HistoryScreen(),
        ),
      );
    } else if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProfileScreen(
            title: 'Halaman Profile',
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffA4BE7B),
        title: Image.asset(
          'images/Myancot.png',
          scale: 55,
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(40, 40, 40, 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Seputar MyAncot',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Image.asset(
                'assets/seputar1.png',
                scale: 1,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Image.asset(
                'assets/seputar2.png',
                scale: 1,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PilihJurusan(),
                  ),
                );
              },
              child: const Text(
                'Pilih Jurusan Angkot',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: const Color(0xffFF8E4F),
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
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
