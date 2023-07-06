import 'package:flutter/material.dart';

class NamaWidgetBaru extends StatefulWidget {
  const NamaWidgetBaru({super.key});

  @override
  State<NamaWidgetBaru> createState() => _NamaWidgetBaru();
}

class _NamaWidgetBaru extends State<NamaWidgetBaru> {
  @override
  int jml = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test Program State'),
      ),
      body: Column(
        children: [
          Text(
            'Jumlah tombil ditekan $jml',
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                jml++;
              });
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (bc) => SecondScreen(
                            jmlKlik: jml,
                          )));
            },
            child: Text('Tekan Tombol '),
          )
        ],
      ),
    );
    ;
  }
}

class SecondScreen extends StatefulWidget {
  final int jmlKlik;
  SecondScreen({required this.jmlKlik});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  String info = '';

  @override
  void initState() {
    super.initState();
    info = '${widget.jmlKlik}';
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman kedua'),
      ),
      body: Center(
        child: Text(info),
      ),
    );
  }
}
