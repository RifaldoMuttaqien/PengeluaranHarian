import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_grahailmu01/model/model.dart';
import 'package:flutter_grahailmu01/model/pengeluaran.dart';
import 'package:flutter_grahailmu01/pengeluaran_harian/inputdata.dart';
import 'package:flutter_grahailmu01/repository/repo.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Pengeluaran> listPengeluaran = [];
  Repository repository = Repository();

  getData() async {
    listPengeluaran = await repository.getData();
    setState(() {});
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  Widget listItem() {
    return Container(
      child: Card(
        child: ListTile(
          leading: Text('a'),
          title: Text('${['nama']}'),
          subtitle: Text('${['nominal']}'),
          trailing: Icon(Icons.more_vert),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (builder) => TambahDataPage()));
        },
        child: Icon(Icons.add_box),
      ),
      appBar: AppBar(
        title: Text('Aplikasi Pengeluaran Harian'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Container(
              child: Card(
                child: ListTile(
                    title: Text(listPengeluaran[index].nama),
                    subtitle: Text(listPengeluaran[index].nominal),
                    trailing: IconButton(
                        onPressed: () async {
                          bool response = await repository
                              .deleteData(listPengeluaran[index].id);
                          if (response) {
                            print('Delete data berhasil');
                          } else {
                            print('Delete dara gagal');
                          }
                          getData();
                        },
                        icon: Icon(
                          Icons.restore_from_trash,
                          color: Colors.red,
                        ))),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
          itemCount: listPengeluaran.length),
    );
  }
}
