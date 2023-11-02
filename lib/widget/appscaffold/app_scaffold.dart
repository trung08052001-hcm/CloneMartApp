import 'package:clonemartapp/res/dimension_constant.dart';
import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    required this.body,
    this.bottomSheet,
    this.bottomNavigationBar,
    this.floatingActionButton,
    this.background,
    this.backgroundChild,
    this.paddingCustom,
    this.marginCustom,
    this.isPaddingDefault = false,
    this.isLandscape = false,
    this.resizeToAvoidBottomInset = false,
    this.appbar,
    this.floatingActionButtonLocation =
        FloatingActionButtonLocation.centerDocked,
    Key? key,
  }) : super(key: key);
  final Widget body;
  final Widget? bottomSheet;
  final Widget? bottomNavigationBar;
  final Widget? floatingActionButton;
  final Color? background;
  final Color? backgroundChild;
  final bool isPaddingDefault;
  final bool isLandscape;
  final bool resizeToAvoidBottomInset;
  final EdgeInsetsGeometry? marginCustom;
  final EdgeInsetsGeometry? paddingCustom;
  final PreferredSizeWidget? appbar;
  final FloatingActionButtonLocation? floatingActionButtonLocation;

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
      child: Scaffold(
        resizeToAvoidBottomInset: resizeToAvoidBottomInset,
        backgroundColor: background,
        body: isPaddingDefault
            ? Container(
                color: background,
                margin: marginCustom,
                padding: paddingCustom ??
                    EdgeInsets.symmetric(
                        horizontal: kDefaultPadding,
                        vertical: kDefaultPaddingVertical),
                child: body,
              )
            : body,
        bottomSheet: bottomSheet,
        bottomNavigationBar: bottomNavigationBar,
        appBar: appbar,
        floatingActionButton: floatingActionButton,
        floatingActionButtonLocation: floatingActionButtonLocation,
      ),
    );
  }
}
