import 'package:flutter/material.dart';
import '../page/pertemuan_detail.dart';

class Pertemuan5ListViewPage extends StatelessWidget {
  const Pertemuan5ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {

    final List<Map<String, dynamic>> data = [

      {
        "title": "Pertemuan 1",
        "desc": "Instalasi Flutter",
        "icon": Icons.download,
        "color": Colors.blue,
      },

      {
        "title": "Pertemuan 2",
        "desc": "Widget Flutter",
        "icon": Icons.widgets,
        "color": Colors.orange,
      },

      {
        "title": "Pertemuan 3",
        "desc": "Form & Button",
        "icon": Icons.edit_note,
        "color": Colors.green,
      },

      {
        "title": "Pertemuan 4",
        "desc": "Toast & Alert Dialog",
        "icon": Icons.notifications_active,
        "color": Colors.red,
      },

      {
        "title": "Pertemuan 5",
        "desc": "ListView",
        "icon": Icons.list,
        "color": Colors.purple,
      },

      {
        "title": "Pertemuan 6",
        "desc": "Checkbox",
        "icon": Icons.check_box,
        "color": Colors.teal,
      },

      {
        "title": "Pertemuan 7",
        "desc": "Radio Button",
        "icon": Icons.radio_button_checked,
        "color": Colors.indigo,
      },
    ];

    return Scaffold(

      backgroundColor: const Color(0xFFF5F7FA),

      appBar: AppBar(

        elevation: 0,
        backgroundColor: Colors.purple,

        title: const Text(
          "Pertemuan 5",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),

        centerTitle: true,
      ),

      body: SingleChildScrollView(

        child: Padding(

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
                      Colors.purple,
                      Color(0xFFBA68C8),
                    ],
                  ),

                  borderRadius: BorderRadius.circular(20),

                  boxShadow: [
                    BoxShadow(
                      color: Colors.purple.withOpacity(0.3),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    )
                  ],
                ),

                child: const Column(

                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [

                    Icon(
                      Icons.list_alt,
                      color: Colors.white,
                      size: 50,
                    ),

                    SizedBox(height: 15),

                    Text(
                      "ListView Flutter",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 10),

                    Text(
                      "Mempelajari penggunaan ListView untuk menampilkan data dalam bentuk daftar.",
                      style: TextStyle(
                        color: Colors.white,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // CARD PENJELASAN
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

                child: const Column(

                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [

                    Text(
                      "Penjelasan",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 15),

                    Text(
                      "ListView adalah widget Flutter yang digunakan untuk menampilkan data dalam bentuk list secara vertikal.",
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.7,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // LISTVIEW DEMO
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

                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [

                    const Text(
                      "Contoh ListView",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 20),

                    ListView.builder(

                      itemCount: data.length,
                      shrinkWrap: true,

                      physics:
                          const NeverScrollableScrollPhysics(),

                      itemBuilder: (context, index) {

                        return Container(

                          margin: const EdgeInsets.only(bottom: 15),

                          child: Material(

                            borderRadius:
                                BorderRadius.circular(18),

                            elevation: 3,

                            child: InkWell(

                              borderRadius:
                                  BorderRadius.circular(18),

                              onTap: () {

                                Navigator.push(
                                  context,

                                  MaterialPageRoute(
                                    builder: (context) =>
                                        PertemuanDetailPage(
                                      title:
                                          data[index]["title"],
                                    ),
                                  ),
                                );
                              },

                              child: Container(

                                padding:
                                    const EdgeInsets.all(16),

                                decoration: BoxDecoration(

                                  color: Colors.white,

                                  borderRadius:
                                      BorderRadius.circular(18),
                                ),

                                child: Row(

                                  children: [

                                    Container(

                                      padding:
                                          const EdgeInsets.all(12),

                                      decoration: BoxDecoration(

                                        color: data[index]["color"]
                                            .withOpacity(0.15),

                                        borderRadius:
                                            BorderRadius.circular(14),
                                      ),

                                      child: Icon(
                                        data[index]["icon"],
                                        color: data[index]["color"],
                                      ),
                                    ),

                                    const SizedBox(width: 15),

                                    Expanded(

                                      child: Column(

                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,

                                        children: [

                                          Text(
                                            data[index]["title"],

                                            style: const TextStyle(
                                              fontWeight:
                                                  FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                          ),

                                          const SizedBox(height: 5),

                                          Text(
                                            data[index]["desc"],

                                            style: TextStyle(
                                              color: Colors.grey[700],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    const Icon(
                                      Icons.arrow_forward_ios,
                                      size: 18,
                                      color: Colors.grey,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}