import 'package:clonemartapp/data/category_detail/category_phone.dart';
import 'package:clonemartapp/res/color_core.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/res/dimension_constant.dart';
import 'package:clonemartapp/widget/page/button/app_button.dart';
import 'package:clonemartapp/widget/page/container/network_image.dart';
import 'package:flutter/material.dart';

class List_Phone extends StatelessWidget {
  List_Phone({
    super.key,
  });

  final List<Category_Phone> products = <Category_Phone>[
    Category_Phone(
      name: 'Jordan',
      imageUrl:
          'https://cafefcdn.com/203337114487263232/2022/2/25/photo-6-16457546813051698707617.jpg',
      price: 22.0,
    ),
    Category_Phone(
      name: 'Smartmen',
      imageUrl:
          'https://giaycaosmartmen.com/wp-content/uploads/2021/01/giay-the-thao-4-mua-smartmen-0.jpg',
      price: 22.0,
    ),
    Category_Phone(
      name: 'Smartmen',
      imageUrl:
          'https://giaycaosmartmen.com/wp-content/uploads/2021/01/giay-the-thao-4-mua-smartmen-0.jpg',
      price: 22.0,
    ),
    Category_Phone(
      name: 'Smartmen',
      imageUrl:
          'https://giaycaosmartmen.com/wp-content/uploads/2021/01/giay-the-thao-4-mua-smartmen-0.jpg',
      price: 22.0,
    ),
    Category_Phone(
      name: 'Smartmen',
      imageUrl:
          'https://giaycaosmartmen.com/wp-content/uploads/2021/01/giay-the-thao-4-mua-smartmen-0.jpg',
      price: 22.0,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (screenHeight - kDefaultPadding * 12) / 2,
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        itemCount: products.length,

        separatorBuilder: (context, index) =>
            SizedBox(height: 20.h), // Khoảng cách giữa các mục
        itemBuilder: (context, index) {
          return ProductItem(product: products[index]);
        },
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final Category_Phone product;

  ProductItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kGhostWhiteColor,
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(12.0), // Đặt giá trị này để có bo viền cong
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NetWorkImageWidget(
            url: product.imageUrl,
            width: 100.h,
            height: 100.h,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8.0),
                Text(
                  '\$${product.price.toString()}',
                  style: TextStyle(fontSize: 16.0, color: Colors.green),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 80,
                ),
                AppButton(
                  onTap: () {},
                  title: "chi tiết",
                  borderColor: kBlueColor,
                  loadingColor: kBlueColor,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
