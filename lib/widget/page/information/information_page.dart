import 'package:clonemartapp/data/information/information_model.dart';
import 'package:flutter/material.dart';

class Information_Page extends StatelessWidget {
  // Danh sách mô hình thông tin
  final List<InformationModel> informationList = <InformationModel>[
    InformationModel(
      title: 'Title 1',
      description: 'Description 1',
    ),
    InformationModel(
      title: 'Title 2',
      description: 'Description 2',
    ),
    InformationModel(
      title: 'Title 3',
      description: 'Description 3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Information List'),
      ),
      body: ListView.builder(
        itemCount: informationList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(informationList[index].title),
            subtitle: Text(informationList[index].description),
          );
        },
      ),
    );
  }
}
