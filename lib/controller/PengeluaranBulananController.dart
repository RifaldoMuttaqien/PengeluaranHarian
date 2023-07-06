import 'package:flutter/material.dart';
import 'package:flutter_grahailmu01/view/from_pengeluaranbulanan.dart';

class PengeluaranBulananController extends StatefulWidget {
  const PengeluaranBulananController({super.key});

  @override
  State<PengeluaranBulananController> createState() =>
      _PengeluaranBulananControllerState();
}

class _PengeluaranBulananControllerState
    extends State<PengeluaranBulananController> {
  @override
  Widget build(BuildContext context) {
    return FormPengeluaranBulanan();
  }
}
