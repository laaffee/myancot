import 'package:flutter/material.dart';

class PrivacyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kebijakan Privasi'),
        backgroundColor: Color(0xffA4BE7B),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Kebijakan Privasi',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'Di My Ancot, kami mengutamakan privasi pengguna kami. Kebijakan Privasi ini menjelaskan bagaimana kami mengumpulkan, menggunakan, dan mengungkapkan informasi pribadi Anda saat Anda menggunakan aplikasi mobile kami.\n',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'Informasi yang Kami Kumpulkan',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Ketika Anda menggunakan aplikasi kami, kami dapat mengumpulkan beberapa informasi, termasuk namun tidak terbatas pada:',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                '- Nama Anda, alamat email, dan rincian kontak lainnya yang Anda berikan saat mendaftar akun.\n\n'
                '- Data penggunaan Anda, seperti interaksi dengan aplikasi, preferensi, dan pengaturan.\n\n'
                '- Informasi perangkat, termasuk jenis perangkat, sistem operasi, dan pengenal perangkat unik.\n\n',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'Bagaimana Kami Menggunakan Informasi Anda',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Kami menggunakan informasi yang dikumpulkan untuk berbagai tujuan, termasuk:',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                '- Menyediakan dan meningkatkan layanan aplikasi kami.\n\n'
                '- Mempersonalisasi pengalaman Anda dan memberikan konten yang disesuaikan.\n\n'
                '- Menganalisis pola penggunaan dan melakukan analisis data.\n\n'
                '- Berkomunikasi dengan Anda, menjawab pertanyaan, dan memberikan dukungan.\n\n',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'Pembaruan dan Pengungkapan Data',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Kami dapat membagikan informasi pribadi Anda kepada pihak ketiga dalam keadaan berikut:',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                '- Dengan persetujuan Anda atau sebagaimana diperlukan untuk memenuhi tujuan yang dijelaskan dalam Kebijakan Privasi ini.\n\n'
                '- Dengan penyedia layanan terpercaya kami yang membantu kami dalam mengoperasikan aplikasi kami dan menyediakan layanan.\n\n'
                '- Jika diperlukan oleh hukum atau untuk melindungi hak, properti, atau keamanan kami.\n\n',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'Keamanan',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Kami mengambil langkah-langkah yang wajar untuk melindungi informasi pribadi Anda dari akses atau pengungkapan yang tidak sah. Namun, perlu diingat bahwa tidak ada langkah keamanan yang sepenuhnya sempurna.\n',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'Perubahan pada Kebijakan Privasi Ini',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Kami dapat memperbarui Kebijakan Privasi ini dari waktu ke waktu. Kami akan memberi tahu Anda tentang perubahan dengan memposting kebijakan yang direvisi di aplikasi kami. Harap tinjau Kebijakan Privasi ini secara berkala.\n',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'Hubungi Kami',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Jika Anda memiliki pertanyaan atau kekhawatiran mengenai Kebijakan Privasi ini, silakan hubungi kami melalui email privacy@myancot.com.\n',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
