import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Pertemuan4ToastPage extends StatelessWidget {
  const Pertemuan4ToastPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Pertemuan 4"),
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(
              onPressed: () {

                Fluttertoast.showToast(
                  msg: "Ini adalah Toast Message",
                );

              },

              child: const Text("Tampilkan Toast"),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {

                showDialog(
                  context: context,

                  builder: (context) {
                    return AlertDialog(
                      title: const Text("Alert Dialog"),

                      content: const Text(
                        "Ini adalah Alert Dialog Flutter",
                      ),

                      actions: [

                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },

                          child: const Text("OK"),
                        )
                      ],
                    );
                  },
                );

              },

              child: const Text("Tampilkan Dialog"),
            ),
          ],
        ),
      ),
    );
  }
}