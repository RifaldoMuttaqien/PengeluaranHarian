import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';

class FirtsScreen extends StatefulWidget {
  const FirtsScreen({super.key});

  @override
  State<FirtsScreen> createState() => _FirtsScreenState();
}

class _FirtsScreenState extends State<FirtsScreen> {
  String tmp = '';
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    refresh();
  }

  Future refresh() async {
    setState(() async {
      isLoading = true;
      final h = await HttpClient().getUrl(Uri.parse('http://news.bsi.ac.id/'));
      tmp = '';

      (await h.close()).transform(Utf8Decoder()).listen((d) {
        tmp += d;
      });
    });
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TEst Refresh'),
      ),
      body: isLoading ? Center(child: CircularProgressIndicator()) : Text(tmp),
    );
  }
}
