import 'package:flutter/material.dart';

import '../pertemuan/pertemuan1_instalasi.dart';
import '../pertemuan/pertemuan2_widget.dart';
import '../pertemuan/pertemuan3_form.dart';
import '../pertemuan/pertemuan4_toast.dart';
import '../pertemuan/pertemuan5_listview.dart';
import '../pertemuan/pertemuan6_checkbox.dart';
import '../pertemuan/pertemuan7_radio.dart';

class PertemuanDetailPage extends StatelessWidget {
  final String title;

  const PertemuanDetailPage({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {

    switch (title) {

      case "Pertemuan 1":
        return const Pertemuan1InstalasiPage();

      case "Pertemuan 2":
        return const Pertemuan2WidgetPage();

      case "Pertemuan 3":
        return const Pertemuan3FormPage();

      case "Pertemuan 4":
        return const Pertemuan4ToastPage();

      case "Pertemuan 5":
        return Pertemuan5ListViewPage();

      case "Pertemuan 6":
        return const Pertemuan6CheckboxPage();

      case "Pertemuan 7":
        return const Pertemuan7RadioPage();

      default:
        return Scaffold(
          appBar: AppBar(
            title: const Text("Error"),
            backgroundColor: Colors.blue,
            centerTitle: true,
          ),

          body: const Center(
            child: Text(
              "Halaman tidak ditemukan",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
    }
  }
}