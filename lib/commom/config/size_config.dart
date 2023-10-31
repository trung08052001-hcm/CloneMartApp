import 'package:flutter/material.dart';

class SizeConfig {
  late MediaQueryData _mediaQueryData;
  late Size _size;

  MediaQueryData get mediaQuerySize => _mediaQueryData;
  Size get size => _size;

  void setMq(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    _size = _mediaQueryData.size;
  }
}
