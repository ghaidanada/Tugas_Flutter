import 'package:flutter/material.dart';

void main() {
  runApp(
      const MyApp()); // Menjalankan aplikasi dengan MyApp sebagai root widget
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Divider Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(), // Menetapkan MyHomePage sebagai halaman utama
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key}); // Constructor untuk MyHomePage

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Divider Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Above Divider'), // Text widget di atas Divider pertama
            const Divider(), // Membuat garis horizontal
            const Text('Below Divider'), // Text widget di bawah Divider pertama
            const Divider(
              thickness: 2, // Mengatur ketebalan Divider menjadi 2 piksel
              color: Colors.red, // Mengatur warna Divider menjadi merah
            ), // Membuat divider yang disesuaikan
          ],
        ),
      ),
    );
  }
}
