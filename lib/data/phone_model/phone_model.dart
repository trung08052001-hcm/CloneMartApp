class PhoneModel {
  PhoneModel(
      {required this.id,
      required this.specialty,
      this.name = '',
      this.avatar = '',
      this.isActive = false});

  factory PhoneModel.fromJson(Map<String, dynamic> json) {
    return PhoneModel(
      id: json['id'],
      name: json['name'],
      avatar: json['avatar'],
      isActive: json['isActive'],
      specialty: json['specialty'],
    );
  }

  final int id;

  final String name;

  final String avatar;

  bool isActive;

  final String specialty;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'avatar': avatar,
      'isActive': isActive,
      'specialty': specialty,
    };
  }
}
