import 'package:flutter/material.dart';

class Pertemuan1InstalasiPage extends StatelessWidget {
  const Pertemuan1InstalasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pertemuan 1"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [

            Text(
              "Instalasi Flutter",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20),

            Text("1. Android Studio"),
            Text("2. Flutter SDK"),
            Text("3. Visual Studio Code"),
            Text("4. Emulator Android"),

            SizedBox(height: 20),

            Text(
              "Flutter digunakan untuk membuat aplikasi mobile multiplatform menggunakan bahasa Dart.",
              style: TextStyle(height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}