import "package:flutter/material.dart";
import "package:flutter_grahailmu01/listDataScreen.dart";

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  String teksInfo = '', jns = '';
  Map itemsValue = {'': 'Pilih', 'D': 'Debet', 'K': 'Kredit'};
  TextEditingController _txtTanggal = new TextEditingController();
  TextEditingController _txtNamaPengeluaran = new TextEditingController();
  TextEditingController _txtNominal = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Isi Data'),
      ),
      body: SingleChildScrollView(
        child: Card(
          elevation: 10,
          margin: EdgeInsets.all(10),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                TextField(
                  controller: _txtTanggal,
                  decoration: InputDecoration(labelText: 'Tanggal'),
                ),
                TextField(
                  controller: _txtNamaPengeluaran,
                  decoration: InputDecoration(labelText: 'Nama Pengeluaran'),
                ),
                DropdownButton(
                  items: itemsValue.keys.map((k) {
                    return DropdownMenuItem(
                      value: k,
                      child: Text('${itemsValue[k]}'),
                    );
                  }).toList(),
                  value: jns,
                  hint: Text('Jenis Pengeluaran'),
                  isExpanded: true,
                  onChanged: (s) {
                    setState(() {
                      jns = s as String;
                    });
                  },
                ),
                TextField(
                  controller: _txtNominal,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Nominal',
                  ),
                ),
                Divider(),
                ElevatedButton.icon(
                  onPressed: () {
                    teksInfo = 'Tanggal ${_txtTanggal.text} \n' +
                        'Jenis Pengeluaran $jns\n' +
                        'Nama Pengeluaran ${_txtNamaPengeluaran.text}\n' +
                        'Nominal ${_txtNominal.text}\n';
                    setState(() {});
                    // tambahkan perintah Navigator.push dibawah
                    Navigator.push(context,
                        MaterialPageRoute(builder: (b) => ListDataScreen()));
                  },
                  icon: Icon(Icons.save),
                  label: Text('Simpan'),
                ),
                Text(teksInfo)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
