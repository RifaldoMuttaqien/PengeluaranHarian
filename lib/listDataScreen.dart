import 'package:flutter/material.dart';

class ListDataScreen extends StatefulWidget {
  const ListDataScreen({super.key});

  @override
  State<ListDataScreen> createState() => _ListDataScreenState();
}

class _ListDataScreenState extends State<ListDataScreen> {
  List data = [];

  _ListDataScreenState() {
    data = [
      {
        'tanggal': '1 Juni 1990',
        'transaksi': 'Pembelian Voucher',
        'nominal': 9000
      },
      {
        'tanggal': '2 Juni 1990',
        'transaksi': 'Pembelian Ayam',
        'nominal': 9000
      },
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List Data Transaksi'),
        ),
        body: ListView(
            children: data.map((d) {
          return ListTile(
            title: Text('${d['transaksi']}'),
            subtitle: Text('${d['tanggal']}'),
            trailing: Text('${d['nominal']}'),
          );
        }).toList()));
  }
}
