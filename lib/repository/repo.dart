import 'dart:convert';

import 'package:flutter_grahailmu01/model/pengeluaran.dart';
import 'package:http/http.dart' as http;

import '../model/model.dart';

class Repository {
  final _baseUrl = 'https://64a6104000c3559aa9c0522e.mockapi.io';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseUrl + '/pengeluaran'));

      if (response.statusCode == 200) {
        print(response.body);
        Iterable it = jsonDecode(response.body);
        List<Pengeluaran> pengeluaran =
            it.map((e) => Pengeluaran.fromJson(e)).toList();
        return pengeluaran;
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future postData(String nama, String nominal) async {
    try {
      final response =
          await http.post(Uri.parse(_baseUrl + '/pengeluaran'), body: {
        "nama": nama,
        "nominal": nominal,
      });

      if (response.statusCode == 201) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future deleteData(String id) async {
    try {
      final response =
          await http.delete(Uri.parse(_baseUrl + '/pengeluaran/' + id));
      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
