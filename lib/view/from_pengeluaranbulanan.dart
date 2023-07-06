import 'package:flutter/material.dart';

class FormPengeluaranBulanan extends StatefulWidget {
  const FormPengeluaranBulanan({super.key});

  @override
  State<FormPengeluaranBulanan> createState() => _FormPengeluaranBulananState();
}

class _FormPengeluaranBulananState extends State<FormPengeluaranBulanan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Form Pengeluaran Bulanan",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: "ID",
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    labelText: "Tanggal",
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: "Nama",
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Nominal",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Simpan",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
