import 'package:flutter/material.dart';

class Pertemuan7RadioPage extends StatefulWidget {
  const Pertemuan7RadioPage({super.key});

  @override
  State<Pertemuan7RadioPage> createState() =>
      _Pertemuan7RadioPageState();
}

class _Pertemuan7RadioPageState
    extends State<Pertemuan7RadioPage> {

  final TextEditingController _namaController =
      TextEditingController();

  final TextEditingController _umurController =
      TextEditingController();

  String jenisKelamin = "";
  String pekerjaan = "";
  String tipePekerjaan = "";

  // HASIL SIMPAN
  bool isSaved = false;

  String savedNama = "";
  String savedUmur = "";
  String savedJenisKelamin = "";
  String savedPekerjaan = "";
  String savedTipePekerjaan = "";

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: const Color(0xFFF5F7FA),

      appBar: AppBar(

        elevation: 0,
        backgroundColor: Colors.indigo,

        title: const Text(
          "Pertemuan 7",
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
                    Colors.indigo,
                    Color(0xFF7986CB),
                  ],
                ),

                borderRadius: BorderRadius.circular(20),

                boxShadow: [
                  BoxShadow(
                    color: Colors.indigo.withOpacity(0.3),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  )
                ],
              ),

              child: const Column(

                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  Icon(
                    Icons.radio_button_checked,
                    color: Colors.white,
                    size: 50,
                  ),

                  SizedBox(height: 15),

                  Text(
                    "Radio Button Flutter",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Mempelajari penggunaan Radio Button untuk memilih satu pilihan.",
                    style: TextStyle(
                      color: Colors.white,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // DATA DIRI
            Container(

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

                children: [

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

                  // UMUR
                  TextField(

                    controller: _umurController,

                    keyboardType:
                        TextInputType.number,

                    decoration: InputDecoration(

                      labelText: "Umur",

                      prefixIcon:
                          const Icon(Icons.cake),

                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // JENIS KELAMIN
            _buildRadioSection(
              "Jenis Kelamin",
              [
                "Laki-Laki",
                "Perempuan",
              ],
              jenisKelamin,
              (value) {

                setState(() {
                  jenisKelamin = value;
                });
              },
            ),

            const SizedBox(height: 20),

            // PEKERJAAN
            _buildRadioSection(
              "Pekerjaan",
              [
                "Mahasiswa",
                "Programmer",
                "Designer",
              ],
              pekerjaan,
              (value) {

                setState(() {
                  pekerjaan = value;
                });
              },
            ),

            const SizedBox(height: 20),

            // TIPE PEKERJAAN
            _buildRadioSection(
              "Tipe Pekerjaan",
              [
                "Part Time",
                "Full Time",
                "Freelance",
              ],
              tipePekerjaan,
              (value) {

                setState(() {
                  tipePekerjaan = value;
                });
              },
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
                            Colors.indigo,

                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(15),
                        ),
                      ),

                      onPressed: () {

                        setState(() {

                          savedNama =
                              _namaController.text;

                          savedUmur =
                              _umurController.text;

                          savedJenisKelamin =
                              jenisKelamin;

                          savedPekerjaan =
                              pekerjaan;

                          savedTipePekerjaan =
                              tipePekerjaan;

                          isSaved = true;
                        });
                      },

                      child: const Text(

                        "SIMPAN",

                        style: TextStyle(
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

                          _namaController.clear();
                          _umurController.clear();

                          jenisKelamin = "";
                          pekerjaan = "";
                          tipePekerjaan = "";

                          savedNama = "";
                          savedUmur = "";
                          savedJenisKelamin = "";
                          savedPekerjaan = "";
                          savedTipePekerjaan = "";

                          isSaved = false;
                        });
                      },

                      child: const Text(

                        "RESET",

                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 25),

            // HASIL DATA
            if (isSaved)

              Container(

                width: double.infinity,
                padding: const EdgeInsets.all(20),

                decoration: BoxDecoration(

                  color: Colors.white,

                  borderRadius:
                      BorderRadius.circular(20),

                  boxShadow: [
                    BoxShadow(
                      color:
                          Colors.grey.withOpacity(0.1),
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
                      "Hasil Data",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 20),

                    _buildResultItem(
                      "Nama",
                      savedNama,
                    ),

                    _buildResultItem(
                      "Umur",
                      savedUmur,
                    ),

                    _buildResultItem(
                      "Jenis Kelamin",
                      savedJenisKelamin,
                    ),

                    _buildResultItem(
                      "Pekerjaan",
                      savedPekerjaan,
                    ),

                    _buildResultItem(
                      "Tipe Pekerjaan",
                      savedTipePekerjaan,
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }

  // RADIO SECTION
  Widget _buildRadioSection(
    String title,
    List<String> options,
    String groupValue,
    Function(String) onChanged,
  ) {

    return Container(

      padding: const EdgeInsets.all(15),

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

          Text(
            title,

            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          ...options.map(

            (item) => RadioListTile(

              title: Text(item),

              value: item,

              groupValue: groupValue,

              onChanged: (value) {
                onChanged(value!);
              },
            ),
          ),
        ],
      ),
    );
  }

  // HASIL ITEM
  Widget _buildResultItem(
      String title,
      String value,
      ) {

    return Padding(

      padding: const EdgeInsets.only(bottom: 12),

      child: Container(

        width: double.infinity,
        padding: const EdgeInsets.all(15),

        decoration: BoxDecoration(

          color: Colors.indigo.withOpacity(0.08),

          borderRadius: BorderRadius.circular(15),
        ),

        child: Text(

          "$title : ${value.isEmpty ? '-' : value}",

          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}