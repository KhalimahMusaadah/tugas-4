import 'package:flutter/material.dart';

class AboutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0), // Tambahkan padding horizontal sesuai kebutuhan
      child: Center(
        child: GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Nama: Khalimah Musaadah"),
                  content: Text("NIM: H1D021001"),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Tutup"),
                    ),
                  ],
                );
              },
            );
          },
          child: Text(
            "Khalim",
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
