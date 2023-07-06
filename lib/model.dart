import 'dart:convert';

class PengeluaranBulanan {
  int id;
  DateTime tgl;
  String nama;
  int nominal;

  PengeluaranBulanan(
      {required this.id,
      required this.tgl,
      required this.nama,
      this.nominal = 0});

  factory PengeluaranBulanan.fromJson(Map<String, dynamic> map) {
    return PengeluaranBulanan(
        id: map["id"],
        tgl: map["tgl"],
        nama: map["nama"],
        nominal: map["nominal"]);
  }
  Map<String, dynamic> toJson() {
    return ({'id': id, 'tgl': tgl, 'nama': nama, 'nominal': nominal});
  }

  @override
  String toString() {
    return 'PengeluaranBulanan{id: $id, tgl: $tgl, nama: $nama, nominal: $nominal}';
  }
}

List<PengeluaranBulanan> PengeluaranBulananFromJson(String jsonData) {
  final data = json.decode(jsonData);
  return List<PengeluaranBulanan>.from(
      data.map((item) => PengeluaranBulanan.fromJson(item)));
}

String PengeluaranBulananToJson(PengeluaranBulanan data) {
  final jsonData = data.toJson();
  return jsonEncode(jsonData);
}
