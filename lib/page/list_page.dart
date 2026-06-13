import 'package:flutter/material.dart';
import 'pertemuan_detail.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

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
        title: const Text(
          "List Pertemuan",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
        elevation: 0,
      ),

      body: ListView.builder(
        itemCount: data.length,
        padding: const EdgeInsets.all(16),

        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(bottom: 15),

            child: Material(
              borderRadius: BorderRadius.circular(20),
              elevation: 5,
              shadowColor: Colors.black12,

              child: InkWell(
  borderRadius: BorderRadius.circular(20),

  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PertemuanDetailPage(
          title: data[index]["title"],
        ),
      ),
    );
  },

  onLongPress: () {
    showMenu(
      context: context,
      position: const RelativeRect.fromLTRB(
        100,
        300,
        100,
        100,
      ),
      items: [
        const PopupMenuItem(
          value: "Detail",
          child: Text("Detail"),
        ),
        const PopupMenuItem(
          value: "Edit",
          child: Text("Edit"),
        ),
        const PopupMenuItem(
          value: "Hapus",
          child: Text("Hapus"),
        ),
        const PopupMenuItem(
          value: "Bagikan",
          child: Text("Bagikan"),
        ),
      ],
    ).then((value) {
      if (value != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              "$value ${data[index]['title']}",
            ),
          ),
        );
      }
    });
  },

  child: Container(
                  padding: const EdgeInsets.all(18),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),

                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(14),

                        decoration: BoxDecoration(
                          color: data[index]["color"].withOpacity(0.15),
                          borderRadius: BorderRadius.circular(15),
                        ),

                        child: Icon(
                          data[index]["icon"],
                          color: data[index]["color"],
                          size: 30,
                        ),
                      ),

                      const SizedBox(width: 18),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text(
                              data[index]["title"],
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            const SizedBox(height: 6),

                            Text(
                              data[index]["desc"],
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),

                      PopupMenuButton<String>(
                        icon: const Icon(
                          Icons.more_vert,
                          color: Colors.grey,
                        ),

                        onSelected: (value) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                "$value ${data[index]['title']}",
                              ),
                            ),
                          );
                        },

                        itemBuilder: (context) => [
                          const PopupMenuItem(
                            value: "Detail",
                            child: Row(
                              children: [
                                Icon(Icons.info, color: Colors.blue),
                                SizedBox(width: 10),
                                Text("Detail"),
                              ],
                            ),
                          ),

                          const PopupMenuItem(
                            value: "Edit",
                            child: Row(
                              children: [
                                Icon(Icons.edit, color: Colors.orange),
                                SizedBox(width: 10),
                                Text("Edit"),
                              ],
                            ),
                          ),

                          const PopupMenuItem(
                            value: "Hapus",
                            child: Row(
                              children: [
                                Icon(Icons.delete, color: Colors.red),
                                SizedBox(width: 10),
                                Text("Hapus"),
                              ],
                            ),
                          ),

                          const PopupMenuItem(
                            value: "Bagikan",
                            child: Row(
                              children: [
                                Icon(Icons.share, color: Colors.green),
                                SizedBox(width: 10),
                                Text("Bagikan"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}