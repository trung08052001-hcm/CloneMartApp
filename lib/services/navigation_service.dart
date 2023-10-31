import 'package:flutter/material.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<void> navigateTo(String routeName) {
    return navigatorKey.currentState!.pushNamed(routeName);
  }

  Future<void> navigateToWithArgs({
    required String routeName,
    Object? args,
  }) {
    return navigatorKey.currentState!.pushNamed(
      routeName,
      arguments: args,
    );
  }

  Future<void> navigateToAndRemoveUntil(
    String routeName,
    RoutePredicate predicate, {
    Object? args,
  }) {
    return navigatorKey.currentState!.pushNamedAndRemoveUntil(
      routeName,
      predicate,
      arguments: args,
    );
  }

  void pop() {
    return navigatorKey.currentState!.pop();
  }

  void popUntil(String routeName) {
    return navigatorKey.currentState!.popUntil(ModalRoute.withName(routeName));
  }

  // Future<void> openDialog(
  //     {String title = '',
  //     String content = '',
  //     String botButton = '',
  //     String topButton = '',
  //     Function()? onTapBot,
  //     Function()? onTapTop,
  //     DialogMessage dialogMessage = DialogMessage.success}) async {
  //   await showDialog(
  //     context: navigatorKey.currentContext!,
  //     builder: (_) => Dialog(
  //       shape:
  //           RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
  //       child: Container(
  //         height: 300.h -
  //             (botButton.isEmpty ? 50.h : 0) -
  //             (topButton.isEmpty ? 50.h : 0),
  //         padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
  //         child: Column(
  //           children: <Widget>[
  //             dialogMessage.assetGenImage
  //                 .svg(height: 80.h, color: dialogMessage.color),
  //             SizedBox(
  //               height: 20.h,
  //             ),
  //             Text(
  //               title,
  //               style: text14.textBlackColor.semiBold,
  //             ),
  //             SizedBox(
  //               height: 15.h,
  //             ),
  //             Text(
  //               content,
  //               style: text12,
  //               textAlign: TextAlign.center,
  //             ),
  //             SizedBox(
  //               height: 15.h,
  //             ),
  //             if (topButton.isNotEmpty)
  //               BaseButton.primary(
  //                 onTap: onTapTop,
  //                 width: 200.w,
  //                 height: 35.h,
  //                 title: topButton,
  //               ),
  //             SizedBox(
  //               height: 10.h,
  //             ),
  //             if (botButton.isNotEmpty)
  //               BaseButton.secondary(
  //                 onTap: onTapBot,
  //                 width: 200.w,
  //                 height: 35.h,
  //                 title: botButton,
  //               ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }

  // Future<void> notificationBar({
  //   required String message,
  //   SnackBarType type = SnackBarType.info,
  //   int milliseconds = 2000,
  // }) async {
  //   ScaffoldMessenger.of(navigatorKey.currentContext!).showSnackBar(SnackBar(
  //     backgroundColor: Colors.transparent,
  //     elevation: 0,
  //     behavior: SnackBarBehavior.floating,
  //     duration: Duration(milliseconds: milliseconds),
  //     margin: EdgeInsets.only(left: 10.w, right: 10.w, bottom: 30.h),
  //     content: SlidingUpContainer(
  //       miliseconds: 1000,
  //       child: Container(
  //         padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
  //         decoration: BoxDecoration(
  //           color: type.color,
  //           borderRadius: BorderRadius.circular(5.r),
  //         ),
  //         child: Row(
  //           mainAxisSize: MainAxisSize.max,
  //           children: <Widget>[
  //             type.icon,
  //             SizedBox(width: 20.w),
  //             Expanded(
  //               child: Text(
  //                 message,
  //                 style: text18.bold.textWhiteColor,
  //               ),
  //             ),
  //             InkWell(
  //               onTap: () {
  //                 ScaffoldMessenger.of(navigatorKey.currentContext!)
  //                     .hideCurrentSnackBar();
  //               },
  //               child: const Icon(
  //                 Icons.close,
  //                 size: 30,
  //                 color: kWhiteColor,
  //               ),
  //             )
  //           ],
  //         ),
  //       ),
  //     ),
  //   ));
  // }

  void showNoInternetDialog() {
    //showUnknownErrorPopUp(navigatorKey.currentContext!);
  }
}
