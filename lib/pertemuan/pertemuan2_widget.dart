import 'package:flutter/material.dart';

class Pertemuan2WidgetPage extends StatefulWidget {
  const Pertemuan2WidgetPage({super.key});

  @override
  State<Pertemuan2WidgetPage> createState() =>
      _Pertemuan2WidgetPageState();
}

class _Pertemuan2WidgetPageState
    extends State<Pertemuan2WidgetPage> {

  final TextEditingController _kodeController =
      TextEditingController();

  final TextEditingController _namaController =
      TextEditingController();

  final TextEditingController _hargaController =
      TextEditingController();

  String kodeProduk = "";
  String namaProduk = "";
  String hargaProduk = "";

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: const Color(0xFFF5F7FA),

      appBar: AppBar(

        elevation: 0,
        backgroundColor: Colors.orange,

        title: const Text(
          "Pertemuan 2",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),

        centerTitle: true,
      ),

      body: SingleChildScrollView(

        padding: const EdgeInsets.all(20),

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            // HEADER
            Container(

              width: double.infinity,
              padding: const EdgeInsets.all(20),

              decoration: BoxDecoration(

                gradient: const LinearGradient(
                  colors: [
                    Colors.orange,
                    Color(0xFFFFB74D),
                  ],
                ),

                borderRadius: BorderRadius.circular(20),

                boxShadow: [
                  BoxShadow(
                    color: Colors.orange.withOpacity(0.3),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  )
                ],
              ),

              child: const Column(

                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  Icon(
                    Icons.inventory_2,
                    color: Colors.white,
                    size: 50,
                  ),

                  SizedBox(height: 15),

                  Text(
                    "Form Produk",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Membuat form input data produk menggunakan TextField dan Button.",
                    style: TextStyle(
                      color: Colors.white,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // FORM PRODUK
            Container(

              width: double.infinity,
              padding: const EdgeInsets.all(20),

              decoration: BoxDecoration(

                color: Colors.white,

                borderRadius: BorderRadius.circular(20),

                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  )
                ],
              ),

              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  const Text(
                    "Input Produk",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),

                  // KODE PRODUK
                  TextField(

                    controller: _kodeController,

                    decoration: InputDecoration(

                      labelText: "Kode Produk",

                      prefixIcon:
                          const Icon(Icons.qr_code),

                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(15),
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),

                  // NAMA PRODUK
                  TextField(

                    controller: _namaController,

                    decoration: InputDecoration(

                      labelText: "Nama Produk",

                      prefixIcon:
                          const Icon(Icons.shopping_bag),

                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(15),
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),

                  // HARGA PRODUK
                  TextField(

                    controller: _hargaController,

                    keyboardType:
                        TextInputType.number,

                    decoration: InputDecoration(

                      labelText: "Harga Produk",

                      prefixIcon:
                          const Icon(Icons.attach_money),

                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(15),
                      ),
                    ),
                  ),

                  const SizedBox(height: 25),

                  // BUTTON
                  Row(

                    children: [

                      // BUTTON SIMPAN
                      Expanded(

                        child: SizedBox(

                          height: 55,

                          child: ElevatedButton(

                            style: ElevatedButton.styleFrom(

                              backgroundColor:
                                  Colors.orange,

                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(15),
                              ),
                            ),

                            onPressed: () {

                              setState(() {

                                kodeProduk =
                                    _kodeController.text;

                                namaProduk =
                                    _namaController.text;

                                hargaProduk =
                                    _hargaController.text;
                              });
                            },

                            child: const Text(

                              "SIMPAN",

                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(width: 15),

                      // BUTTON RESET
                      Expanded(

                        child: SizedBox(

                          height: 55,

                          child: ElevatedButton(

                            style: ElevatedButton.styleFrom(

                              backgroundColor:
                                  Colors.red,

                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(15),
                              ),
                            ),

                            onPressed: () {

                              setState(() {

                                _kodeController.clear();
                                _namaController.clear();
                                _hargaController.clear();

                                kodeProduk = "";
                                namaProduk = "";
                                hargaProduk = "";
                              });
                            },

                            child: const Text(

                              "RESET",

                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // DETAIL PRODUK
            Container(

              width: double.infinity,
              padding: const EdgeInsets.all(20),

              decoration: BoxDecoration(

                color: Colors.white,

                borderRadius: BorderRadius.circular(20),

                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  )
                ],
              ),

              child: Column(

                crossAxisAlignment:
                    CrossAxisAlignment.start,

                children: [

                  const Text(
                    "Detail Produk",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),

                  _buildDetailItem(
                    "Kode Produk",
                    kodeProduk,
                  ),

                  const SizedBox(height: 12),

                  _buildDetailItem(
                    "Nama Produk",
                    namaProduk,
                  ),

                  const SizedBox(height: 12),

                  _buildDetailItem(
                    "Harga Produk",
                    hargaProduk,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // DETAIL ITEM
  Widget _buildDetailItem(
      String title,
      String value,
      ) {

    return Container(

      width: double.infinity,
      padding: const EdgeInsets.all(15),

      decoration: BoxDecoration(

        color: Colors.orange.withOpacity(0.08),

        borderRadius: BorderRadius.circular(15),
      ),

      child: Column(

        crossAxisAlignment:
            CrossAxisAlignment.start,

        children: [

          Text(
            title,

            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 14,
            ),
          ),

          const SizedBox(height: 5),

          Text(
            value.isEmpty ? "-" : value,

            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}