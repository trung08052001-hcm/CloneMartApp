import 'package:clonemartapp/commom/di/app_injector.dart';
import 'package:clonemartapp/data/enum/profile_type.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/res/dimension_constant.dart';
import 'package:clonemartapp/services/navigation_service.dart';
import 'package:clonemartapp/widget/appscaffold/app_scaffold.dart';
import 'package:clonemartapp/widget/page/profile/bloc/profile_bloc.dart';
import 'package:clonemartapp/widget/page/profile/widget/profile_infor.dart';
import 'package:clonemartapp/widget/page/profile/widget/profile_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfilePage extends StatelessWidget {
  final List<ProfileType> profileType = <ProfileType>[
    ProfileType.history,
    ProfileType.personal,
    ProfileType.address,
    ProfileType.payment,
    ProfileType.about,
    ProfileType.help,
  ];
  @override
  Widget build(BuildContext context) {
    final bloc = getIt<ProfileBloc>();

    return AppScaffold(
      isPaddingDefault: true,
      body: BlocBuilder<ProfileBloc, ProfileState>(
        bloc: bloc,
        builder: (BuildContext context, ProfileState state) {
          return Column(
            children: <Widget>[
              const ProfileInfo(),
              const SizedBox(
                height: 40.0,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  children: <Widget>[
                    ...profileType.map(
                      (ProfileType e) => Padding(
                        padding: EdgeInsets.only(bottom: 20.h),
                        child: ProfileSection(
                          option: e,
                          onTap: () {
                            getIt<NavigationService>()
                                .navigateTo(e.navigateKey);
                          },
                        ),
                      ),
                    ),
                    ProfileSection(
                      option: ProfileType.logout,
                      onTap: () {},
                    ),
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
