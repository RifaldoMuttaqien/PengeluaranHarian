import 'package:flutter/material.dart';
import 'package:flutter_grahailmu01/pengeluaran_harian/home.dart';
import 'package:flutter_grahailmu01/repository/repo.dart';

class TambahDataPage extends StatefulWidget {
  const TambahDataPage({super.key});

  @override
  State<TambahDataPage> createState() => _TambahDataPageState();
}

class _TambahDataPageState extends State<TambahDataPage> {
  Repository repository = Repository();
  final _namaController = TextEditingController();
  final _nominalController = TextEditingController();

  Widget tanggal() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('Tanggal',
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold)),
          )
        ],
      ),
    );
  }

  Widget pengeluaran() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text("Nama Pengeluaran",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold)),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
            child: TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  )),
            ),
          )
        ],
      ),
    );
  }

  Widget jenisPengeluaran() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text("Jenis Pengeluaran",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold)),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
            child: TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  )),
            ),
          )
        ],
      ),
    );
  }

  Widget rupiah() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text("Nominal",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold)),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
            child: TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  )),
            ),
          )
        ],
      ),
    );
  }

  Widget simpan() {
    return Container(
      height: 50.0,
      width: 100.0,
      child: ElevatedButton(
          onPressed: () async {
            bool response = await repository.postData(
                _namaController.text, _nominalController.text);

            if (response) {
              Navigator.pop(context,
                  MaterialPageRoute(builder: (builder) => HomeScreen()));
            } else {
              print('Post Data Gagal');
            }
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.save),
              Text('Simpan'),
            ],
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Data'),
      ),
      body: Column(
        children: [
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Nama',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                ),
                TextField(
                  controller: _namaController,
                  decoration: InputDecoration(
                    hintText: 'nama anda',
                    contentPadding: EdgeInsets.all(10.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Nominal',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                ),
                TextField(
                  controller: _nominalController,
                  decoration: InputDecoration(
                    hintText: 'nominal anda',
                    contentPadding: EdgeInsets.all(10.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                  ),
                ),
              ],
            ),
          ),
          simpan(),
        ],
      ),
    );
  }
}
