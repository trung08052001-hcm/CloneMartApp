import 'package:clonemartapp/data/address_model/address_model.dart';
import 'package:clonemartapp/widget/page/button/app_button.dart';
import 'package:clonemartapp/widget/page/profile/page/address/widget/address_info.dart';
import 'package:flutter/material.dart';

class AddressItem extends StatelessWidget {
  final AddressModel address;
  final bool isSelected;
  final VoidCallback onTap;

  AddressItem({
    required this.address,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppButton(
      onTap: onTap,
      child: AddressInfo(
        address: address,
        isSelected: isSelected,
      ),
    );
  }
}
