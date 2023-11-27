class AddressModel {
  AddressModel({
    required this.name,
    required this.phone,
    required this.address,
    this.isSelected = false,
  });

  final String name;
  final String phone;
  final String address;
  bool isSelected;
}
