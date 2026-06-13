import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Pertemuan6CheckboxPage extends StatefulWidget {
  const Pertemuan6CheckboxPage({super.key});

  @override
  State<Pertemuan6CheckboxPage> createState() =>
      _Pertemuan6CheckboxPageState();
}

class _Pertemuan6CheckboxPageState
    extends State<Pertemuan6CheckboxPage> {

  final TextEditingController _namaController =
      TextEditingController();

  final TextEditingController _nimController =
      TextEditingController();

  final TextEditingController _kelasController =
      TextEditingController();

  bool _isCheckedSyarat = false;

  String _errorText = '';

  Map<String, bool> _hobbies = {
    'Membaca': false,
    'Olahraga': false,
    'Musik': false,
    'Game': false,
    'Traveling': false,
  };

  String _namaError = '';
  String _nimError = '';
  String _kelasError = '';
  String _hobbyError = '';

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: const Color(0xFFF5F7FA),

      appBar: AppBar(

        elevation: 0,
        backgroundColor: Colors.lightGreen,

        title: const Text(
          'Pertemuan 6',
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
                    Colors.lightGreen,
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
                    Icons.check_box,
                    color: Colors.white,
                    size: 50,
                  ),

                  SizedBox(height: 15),

                  Text(
                    "Checkbox Flutter",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Mempelajari penggunaan Checkbox dan validasi form pada Flutter.",
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
            _buildDataDiri(),

            const SizedBox(height: 20),

            // HOBI
            _buildHobi(),

            const SizedBox(height: 20),

            // SYARAT
            _buildSyarat(),

            const SizedBox(height: 30),

            // BUTTON
            _buildButton(),
          ],
        ),
      ),
    );
  }

  // DATA DIRI
  Widget _buildDataDiri() {

    return Container(

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
            "Data Diri",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          TextField(
            controller: _namaController,

            decoration: InputDecoration(
              labelText: "Nama",
              prefixIcon: const Icon(Icons.person),

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),

              errorText:
                  _namaError.isEmpty ? null : _namaError,
            ),
          ),

          const SizedBox(height: 15),

          TextField(
            controller: _nimController,

            keyboardType: TextInputType.number,

            decoration: InputDecoration(
              labelText: "NIM",
              prefixIcon: const Icon(Icons.badge),

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),

              errorText:
                  _nimError.isEmpty ? null : _nimError,
            ),
          ),

          const SizedBox(height: 15),

          TextField(
            controller: _kelasController,

            decoration: InputDecoration(
              labelText: "Kelas",
              prefixIcon: const Icon(Icons.class_),

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),

              errorText:
                  _kelasError.isEmpty ? null : _kelasError,
            ),
          ),
        ],
      ),
    );
  }

  // HOBI
  Widget _buildHobi() {

    return Container(

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
            "Pilih Hobi",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          ..._hobbies.keys.map((hobby) {

            return CheckboxListTile(

              activeColor: Colors.lightGreen,

              title: Text(hobby),

              value: _hobbies[hobby],

              onChanged: (val) {

                setState(() {
                  _hobbies[hobby] = val!;
                });
              },
            );
          }).toList(),

          if (_hobbyError.isNotEmpty)

            Padding(
              padding: const EdgeInsets.only(top: 10),

              child: Text(
                _hobbyError,
                style: const TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
        ],
      ),
    );
  }

  // SYARAT
  Widget _buildSyarat() {

    return Container(

      width: double.infinity,

      padding: const EdgeInsets.all(10),

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

          CheckboxListTile(

            activeColor: Colors.lightGreen,

            title: const Text(
              "Setuju syarat & ketentuan",
            ),

            value: _isCheckedSyarat,

            onChanged: (val) {

              setState(() {
                _isCheckedSyarat = val!;
              });
            },
          ),

          if (_errorText.isNotEmpty)

            Padding(
              padding: const EdgeInsets.only(bottom: 10),

              child: Text(
                _errorText,
                style: const TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
        ],
      ),
    );
  }

  // BUTTON
  Widget _buildButton() {

    return SizedBox(

      width: double.infinity,
      height: 55,

      child: ElevatedButton(

        style: ElevatedButton.styleFrom(

          backgroundColor: Colors.lightGreen,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),

        onPressed: () => _submit(),

        child: const Text(
          "DAFTAR SEKARANG",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  // SUBMIT
  void _submit() {

    setState(() {

      _namaError =
          _namaController.text.isEmpty
              ? "Nama wajib diisi"
              : "";

      _nimError =
          _nimController.text.isEmpty
              ? "NIM wajib diisi"
              : "";

      _kelasError =
          _kelasController.text.isEmpty
              ? "Kelas wajib diisi"
              : "";

      _hobbyError =
          !_hobbies.values.any((e) => e)
              ? "Pilih minimal 1 hobi"
              : "";

      _errorText =
          !_isCheckedSyarat
              ? "Harus setuju syarat"
              : "";
    });

    if (_namaError.isEmpty &&
        _nimError.isEmpty &&
        _kelasError.isEmpty &&
        _hobbyError.isEmpty &&
        _errorText.isEmpty) {

      List<String> selectedHobby = _hobbies.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

      showDialog(

        context: context,

        builder: (_) => AlertDialog(

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),

          title: const Text(
            "Pendaftaran Berhasil",
          ),

          content: Column(

            mainAxisSize: MainAxisSize.min,

            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              Text("Nama : ${_namaController.text}"),
              Text("NIM : ${_nimController.text}"),
              Text("Kelas : ${_kelasController.text}"),

              const SizedBox(height: 10),

              Text(
                "Hobi : ${selectedHobby.join(", ")}",
              ),
            ],
          ),

          actions: [

            ElevatedButton(

              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightGreen,
              ),

              onPressed: () {

                Navigator.pop(context);

                Fluttertoast.showToast(
                  msg: "Data berhasil disimpan",
                );
              },

              child: const Text("OK"),
            )
          ],
        ),
      );
    }
  }
}