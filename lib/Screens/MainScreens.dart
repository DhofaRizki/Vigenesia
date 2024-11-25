import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MainScreens'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0), // Padding untuk seluruh kontainer utama
          child: Container(
            width: MediaQuery.of(context).size.width * 0.6, // Lebar 90% dari layar
            height: MediaQuery.of(context).size.height * 0.8, // Tinggi 80% dari layar
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch, // Membuat elemen melebar penuh
              children: [
                Text(
                  'MOTIVASI',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center, // Menjadikan teks berada di tengah
                ),
                SizedBox(height: 8),
                Text(
                  'Visi Generasi Indonesia',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center, // Menjadikan teks berada di tengah
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0), // Padding kanan-kiri
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Masukkan teks di sini',
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0), // Padding kanan-kiri
                  child: ElevatedButton(
                    onPressed: () {
                      // Tambahkan fungsi ketika tombol ditekan
                    },
                    child: Text('Submit'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
