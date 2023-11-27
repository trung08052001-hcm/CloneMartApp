import 'package:clonemartapp/widget/page/profile/page/history/bloc/history_bloc.dart';

abstract class DeliveryHistoryState {}

class DeliveryHistoryInitial extends DeliveryHistoryState {}

class DeliveryHistoryLoaded extends DeliveryHistoryState {
  final List<DeliveryItem>
      history; // Thay đổi kiểu dữ liệu thành List<DeliveryItem>

  DeliveryHistoryLoaded(this.history);
}

class DeliveryHistoryError extends DeliveryHistoryState {
  final String error;

  DeliveryHistoryError(this.error);
}
