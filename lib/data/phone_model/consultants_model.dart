class ConsultantsModel {
  ConsultantsModel(
      {required this.id,
      required this.specialty,
      this.name = '',
      this.avatar = '',
      this.isActive = false});

  factory ConsultantsModel.fromJson(Map<String, dynamic> json) {
    return ConsultantsModel(
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

List<ConsultantsModel> consultants = <ConsultantsModel>[
  ConsultantsModel(
    id: 0,
    name: 'Gojo',
    avatar:
        'https://htmediagroup.vn/wp-content/uploads/2022/09/Anh-cty-4-min.jpg',
    specialty: 'Cardiologist',
  ),
  ConsultantsModel(
    id: 1,
    name: 'Zenin',
    avatar:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsSKnD8qI-M2lvoy59N_AQ0ZZ52p0rtAbvSw&usqp=CAU',
    specialty: 'Dentist',
  ),
  ConsultantsModel(
    id: 2,
    name: 'Ali',
    avatar:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRD5zpB_78aVjrTJEpz63i9bWpeTZPNoDeyGQ&usqp=CAU',
    specialty: 'Physycologist',
  ),
  ConsultantsModel(
    id: 4,
    name: 'Zoro',
    avatar:
        'https://www.freepnglogos.com/uploads/doctor-png/doctor-png-transparent-doctor-images-pluspng-10.png',
    specialty: 'Theripist',
  ),
  ConsultantsModel(
    id: 4,
    name: 'Zoro',
    avatar:
        'https://www.freepnglogos.com/uploads/doctor-png/doctor-png-transparent-doctor-images-pluspng-10.png',
    specialty: 'Theripist',
  ),
  ConsultantsModel(
    id: 4,
    name: 'Zoro',
    avatar:
        'https://www.freepnglogos.com/uploads/doctor-png/doctor-png-transparent-doctor-images-pluspng-10.png',
    specialty: 'Theripist',
  ),
];
