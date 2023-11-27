import 'package:clonemartapp/commom/di/app_injector.dart';
import 'package:clonemartapp/res/color_core.dart';
import 'package:clonemartapp/res/dimension_constant.dart';
import 'package:clonemartapp/widget/app_bar.dart/default_app_bar.dart';
import 'package:clonemartapp/widget/appscaffold/app_scaffold.dart';
import 'package:clonemartapp/widget/page/profile/page/history/bloc/history_bloc.dart';
import 'package:clonemartapp/widget/page/profile/page/history/bloc/history_event.dart';
import 'package:clonemartapp/widget/page/profile/page/history/bloc/history_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = getIt<DeliveryHistoryBloc>();

    return AppScaffold(
      isPaddingDefault: true,
      paddingCustom: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      appbar: const DefaultAppbar(
        title: 'History',
        hasLeading: true,
        elevation: 1,
        color: kWhiteColor,
      ),
      body: BlocBuilder<DeliveryHistoryBloc, DeliveryHistoryState>(
        bloc: bloc,
        builder: (BuildContext context, DeliveryHistoryState state) {
          if (state is DeliveryHistoryInitial) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is DeliveryHistoryLoaded) {
            return ListView.builder(
              itemCount: state.history.length,
              itemBuilder: (context, index) {
                return buildDeliveryItem(state.history[index]);
              },
            );
          } else if (state is DeliveryHistoryError) {
            return Center(
              child: Text('Error: ${state.error}'),
            );
          } else {
            return Container(); // Handle other states if necessary
          }
        },
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: Icon(Icons.refresh),
      // ),
    );
  }

  Widget buildDeliveryItem(DeliveryItem delivery) {
    return ListTile(
      title: Text(delivery.phone),
      subtitle: Text(delivery.address),
      leading: CircleAvatar(
        backgroundColor: delivery.successful ? Colors.green : Colors.red,
        child: delivery.successful
            ? Icon(Icons.check, color: Colors.white)
            : Icon(Icons.close, color: Colors.white),
      ),
    );
  }
}
