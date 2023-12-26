import 'package:clonemartapp/res/color_core.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/res/themes/text_theme.dart';
import 'package:clonemartapp/widget/page/container/network_image.dart';
import 'package:flutter/material.dart';

class CustomLikeNotification extends StatelessWidget {
  const CustomLikeNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 80.h,
          width: 65.w,
          child: Stack(children: [
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: NetWorkImageWidget(
                url:
                    'https://scontent.fsgn19-1.fna.fbcdn.net/v/t39.30808-6/344331862_719469319866415_8102814338094817520_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=dd5e9f&_nc_ohc=znRcXi4Ca5kAX_YmKm_&_nc_ht=scontent.fsgn19-1.fna&oh=00_AfDTZqed-Su6-t4wD3WwKX2Loj4GpDG00NnigRqxOcM6WA&oe=658DB9C8',
                width: 50.h,
                height: 50.h,
                borderRadius: 25.r,
                boxBorder: Border.all(color: kWhiteColor, width: 5.w),
              ),
            ),
            Positioned(
              bottom: 10,
              child: NetWorkImageWidget(
                url:
                    'https://scontent.fsgn19-1.fna.fbcdn.net/v/t39.30808-6/329596301_732928918477609_4763765636135439977_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=dd5e9f&_nc_ohc=imFzgVelT44AX8KeE_H&_nc_ht=scontent.fsgn19-1.fna&oh=00_AfBUScx9WrEBzSpbZe8YWYXyDY7iwpOuOschMEOBVQM0zw&oe=658D4087',
                width: 50.h,
                height: 50.h,
                borderRadius: 25.r,
                boxBorder: Border.all(color: kWhiteColor, width: 5.w),
              ),
            )
          ]),
        ),
        Column(
          children: [
            RichText(
                maxLines: 2,
                text: TextSpan(
                    text: "Ennibi",
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                          color: textBlackColor,
                          fontSize: 14,
                        ),
                    children: [
                      TextSpan(
                          text: " and \n",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                  fontSize: 14,
                                  color: textBlackColor,
                                  fontWeight: bold)),
                      TextSpan(
                          text: "Sam Wincherter",
                          style:
                              Theme.of(context).textTheme.headline3!.copyWith(
                                    color: textBlackColor,
                                    fontSize: 14,
                                  ))
                    ])),
            SizedBox(
              height: 10.h,
            ),
            Text("Liked your recipe ",
                style: Theme.of(context).textTheme.headline3!.copyWith(
                      color: textBlackColor,
                      fontSize: 14,
                    )),
          ],
        ),
        const Spacer(),
        NetWorkImageWidget(
          url:
              'https://scontent.fsgn19-1.fna.fbcdn.net/v/t39.30808-6/344331862_719469319866415_8102814338094817520_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=dd5e9f&_nc_ohc=znRcXi4Ca5kAX_YmKm_&_nc_ht=scontent.fsgn19-1.fna&oh=00_AfDTZqed-Su6-t4wD3WwKX2Loj4GpDG00NnigRqxOcM6WA&oe=658DB9C8',
          width: 75.h,
          height: 75.h,
          borderRadius: 25.r,
          boxBorder: Border.all(color: kWhiteColor, width: 5.w),
        ),
      ],
    );
  }
}
