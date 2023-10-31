import 'package:clonemartapp/widget/app_routes.dart';
import 'package:clonemartapp/widget/page/main/main_page.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class PageDI {
  PageDI._();

  static Future<void> init(GetIt injector) async {
    injector
          //A

          //C

          //D

          //F

          //L

          //M
          ..registerFactory<Widget>(MainPage.new, instanceName: RouteConst.main)
        //N

        //P

        //O

        //S
        // ..registerFactory<Widget>(SearchResultPage.new,
        //     instanceName: RouteConst.search);
        ;
    //V

    //R
  }
}
