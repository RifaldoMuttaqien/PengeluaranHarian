import 'package:flutter/material.dart';
import 'package:flutter_grahailmu01/belajarState/belajarState.dart';
import 'package:flutter_grahailmu01/belajarState/firtsScreen.dart';
import 'package:flutter_grahailmu01/belajarState/tabScreen.dart';
import 'package:flutter_grahailmu01/loginScreen.dart';
import 'package:flutter_grahailmu01/pengeluaran_harian/home.dart';
import 'package:flutter_grahailmu01/pengeluaran_harian/inputdata.dart';

void main() {
  runApp(const Appku());
}

class Appku extends StatelessWidget {
  const Appku({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
