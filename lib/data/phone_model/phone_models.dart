class PhoneModels {
  PhoneModels(
      {required this.id,
      required this.specialty,
      this.name = '',
      this.avatar = '',
      this.isActive = false});

  factory PhoneModels.fromJson(Map<String, dynamic> json) {
    return PhoneModels(
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

List<PhoneModels> phones = <PhoneModels>[
  PhoneModels(
    id: 0,
    name: 'Gojo',
    avatar:
        'https://iphonehd.vn/wp-content/uploads/2022/09/14xanh-600x600-5.png',
    specialty: 'Cardiologist',
  ),
  PhoneModels(
    id: 1,
    name: 'Zenin',
    avatar:
        'https://iphonehd.vn/wp-content/uploads/2022/09/14xanh-600x600-5.png',
    specialty: 'Dentist',
  ),
  PhoneModels(
    id: 2,
    name: 'Ali',
    avatar:
        'https://iphonehd.vn/wp-content/uploads/2022/09/14xanh-600x600-5.png',
    specialty: 'Physycologist',
  ),
  PhoneModels(
    id: 4,
    name: 'Zoro',
    avatar:
        'https://www.freepnglogos.com/uploads/doctor-png/doctor-png-transparent-doctor-images-pluspng-10.png',
    specialty: 'Theripist',
  ),
  PhoneModels(
    id: 4,
    name: 'Zoro',
    avatar:
        'https://www.freepnglogos.com/uploads/doctor-png/doctor-png-transparent-doctor-images-pluspng-10.png',
    specialty: 'Theripist',
  ),
  PhoneModels(
    id: 4,
    name: 'Zoro',
    avatar:
        'https://www.freepnglogos.com/uploads/doctor-png/doctor-png-transparent-doctor-images-pluspng-10.png',
    specialty: 'Theripist',
  ),
];
