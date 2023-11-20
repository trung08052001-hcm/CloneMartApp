class InforModels {
  InforModels(
      {required this.id,
      required this.specialty,
      this.name = '',
      this.avatar = '',
      this.isActive = false});

  factory InforModels.fromJson(Map<String, dynamic> json) {
    return InforModels(
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

List<InforModels> informodel = <InforModels>[
  InforModels(
    id: 0,
    name: 'Gojo',
    avatar:
        'https://image.dienthoaivui.com.vn/x,webp,q100/https://dashboard.dienthoaivui.com.vn/uploads/wp-content/uploads/images/tra-thong-tin-so-dien-thoai-thumbnail.jpg',
    specialty: 'Cardiologist',
  ),
  InforModels(
    id: 1,
    name: 'Zenin',
    avatar:
        'https://image.dienthoaivui.com.vn/x,webp,q100/https://dashboard.dienthoaivui.com.vn/uploads/wp-content/uploads/images/tra-thong-tin-so-dien-thoai-thumbnail.jpg',
    specialty: 'Dentist',
  ),
  InforModels(
    id: 2,
    name: 'Ali',
    avatar:
        'https://image.dienthoaivui.com.vn/x,webp,q100/https://dashboard.dienthoaivui.com.vn/uploads/wp-content/uploads/images/tra-thong-tin-so-dien-thoai-thumbnail.jpg',
    specialty: 'Physycologist',
  ),
  InforModels(
    id: 4,
    name: 'Zoro',
    avatar:
        'https://www.freepnglogos.com/uploads/doctor-png/doctor-png-transparent-doctor-images-pluspng-10.png',
    specialty: 'Theripist',
  ),
  InforModels(
    id: 4,
    name: 'Zoro',
    avatar:
        'https://www.freepnglogos.com/uploads/doctor-png/doctor-png-transparent-doctor-images-pluspng-10.png',
    specialty: 'Theripist',
  ),
  InforModels(
    id: 4,
    name: 'Zoro',
    avatar:
        'https://www.freepnglogos.com/uploads/doctor-png/doctor-png-transparent-doctor-images-pluspng-10.png',
    specialty: 'Theripist',
  ),
];
