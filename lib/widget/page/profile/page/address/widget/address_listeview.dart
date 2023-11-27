import 'package:clonemartapp/data/address_model/address_model.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/widget/page/profile/page/address/widget/address_checkbox.dart';
import 'package:flutter/material.dart';

class AddressListView extends StatefulWidget {
  const AddressListView({Key? key}) : super(key: key);

  @override
  _AddressListViewState createState() => _AddressListViewState();
}

class _AddressListViewState extends State<AddressListView> {
  int? _selectedAddressIndex;

  List<AddressModel> addresses = [
    AddressModel(
      name: 'Nguyen',
      phone: '0388186506',
      address: '25/25 phường Xã Lũng Cú , quận Huyện đồng Vấn , tỉnh Hà Giang',
    ),
    AddressModel(
      name: 'Trần Đạt',
      phone: '0986514234',
      address: '8 Lê Văn Duyệt phường 2 , quận bình thạnh , hồ chí minh',
    ),
    AddressModel(
      name: 'Lê Hoàng Nam',
      phone: '0787876565',
      address: '232 Hoàng hoa Thám phường 12 quận tân bình , Hồ Chí Minh',
    ),
  ];

  void _handleItemTap(int index) {
    setState(() {
      if (_selectedAddressIndex == index) {
        _selectedAddressIndex = null;
      } else {
        _selectedAddressIndex = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500.h,
      child: ListView.separated(
        itemCount: addresses.length,
        separatorBuilder: (_, int index) => SizedBox(width: 15.w),
        itemBuilder: (BuildContext context, int index) {
          return AddressItem(
            address: addresses[index],
            isSelected: _selectedAddressIndex == index,
            onTap: () {
              _handleItemTap(index);
            },
          );
        },
      ),
    );
  }
}
