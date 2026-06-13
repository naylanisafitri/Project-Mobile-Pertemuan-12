import 'package:flutter/material.dart';

class Pertemuan3FormPage extends StatefulWidget {
  const Pertemuan3FormPage({super.key});

  @override
  State<Pertemuan3FormPage> createState() =>
      _Pertemuan3FormPageState();
}

class _Pertemuan3FormPageState
    extends State<Pertemuan3FormPage> {

  final TextEditingController _namaController =
      TextEditingController();

  final TextEditingController _emailController =
      TextEditingController();

  final TextEditingController _alamatController =
      TextEditingController();

  String nama = "";
  String email = "";
  String alamat = "";

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: const Color(0xFFF5F7FA),

      appBar: AppBar(

        elevation: 0,
        backgroundColor: Colors.green,

        title: const Text(
          "Pertemuan 3",
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
                    Colors.green,
                    Color(0xFF81C784),
                  ],
                ),

                borderRadius: BorderRadius.circular(20),

                boxShadow: [
                  BoxShadow(
                    color: Colors.green.withOpacity(0.3),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  )
                ],
              ),

              child: const Column(

                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  Icon(
                    Icons.assignment,
                    color: Colors.white,
                    size: 50,
                  ),

                  SizedBox(height: 15),

                  Text(
                    "Form & Button",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Mempelajari penggunaan TextField dan Button untuk membuat form input data.",
                    style: TextStyle(
                      color: Colors.white,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // FORM INPUT
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
                    "Input Data",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),

                  // NAMA
                  TextField(

                    controller: _namaController,

                    decoration: InputDecoration(

                      labelText: "Nama",

                      prefixIcon:
                          const Icon(Icons.person),

                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(15),
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),

                  // EMAIL
                  TextField(

                    controller: _emailController,

                    decoration: InputDecoration(

                      labelText: "Email",

                      prefixIcon:
                          const Icon(Icons.email),

                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(15),
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),

                  // ALAMAT
                  TextField(

                    controller: _alamatController,

                    maxLines: 3,

                    decoration: InputDecoration(

                      labelText: "Alamat",

                      prefixIcon:
                          const Icon(Icons.location_on),

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

                      // SIMPAN
                      Expanded(

                        child: SizedBox(

                          height: 55,

                          child: ElevatedButton(

                            style: ElevatedButton.styleFrom(

                              backgroundColor:
                                  Colors.green,

                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(15),
                              ),
                            ),

                            onPressed: () {

                              setState(() {

                                nama =
                                    _namaController.text;

                                email =
                                    _emailController.text;

                                alamat =
                                    _alamatController.text;
                              });
                            },

                            child: const Text(

                              "SIMPAN DATA",

                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(width: 15),

                      // RESET
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

                                _namaController.clear();
                                _emailController.clear();
                                _alamatController.clear();

                                nama = "";
                                email = "";
                                alamat = "";
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

            // HASIL INPUT
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
                    "Hasil Input",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),

                  _buildResultItem(
                    "Nama",
                    nama,
                    Icons.person,
                  ),

                  const SizedBox(height: 15),

                  _buildResultItem(
                    "Email",
                    email,
                    Icons.email,
                  ),

                  const SizedBox(height: 15),

                  _buildResultItem(
                    "Alamat",
                    alamat,
                    Icons.location_on,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildResultItem(
      String title,
      String value,
      IconData icon,
      ) {

    return Container(

      width: double.infinity,
      padding: const EdgeInsets.all(15),

      decoration: BoxDecoration(

        color: Colors.green.withOpacity(0.08),

        borderRadius: BorderRadius.circular(15),
      ),

      child: Row(

        children: [

          Icon(
            icon,
            color: Colors.green,
          ),

          const SizedBox(width: 15),

          Expanded(

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
          ),
        ],
      ),
    );
  }
}