class Pengeluaran {
  final String id;
  final String nama;
  final String nominal;

  const Pengeluaran({
    required this.id,
    required this.nama,
    required this.nominal,
  });

  factory Pengeluaran.fromJson(Map<String, dynamic> json) {
    return Pengeluaran(
      id: json["id"],
      nominal: json["nominal"],
      nama: json["nama"],
    );
  }
}
