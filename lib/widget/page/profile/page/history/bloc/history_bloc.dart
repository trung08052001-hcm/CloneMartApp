import 'package:clonemartapp/widget/page/profile/page/history/bloc/history_event.dart';
import 'package:clonemartapp/widget/page/profile/page/history/bloc/history_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DeliveryHistoryBloc
    extends Bloc<DeliveryHistoryEvent, DeliveryHistoryState> {
  DeliveryHistoryBloc() : super(DeliveryHistoryInitial());
  @override
  DeliveryHistoryState get initialState => DeliveryHistoryInitial();

  @override
  Stream<DeliveryHistoryState> mapEventToState(
      DeliveryHistoryEvent event) async* {
    if (event is LoadDeliveryHistory) {
      try {
        // Simulate loading data from an API
        List<DeliveryItem> history = await fetchData();
        yield DeliveryHistoryLoaded(history);
      } catch (e) {
        yield DeliveryHistoryError('Error loading delivery history');
      }
    }
  }

  // Simulate fetching data from an API
  Future<List<DeliveryItem>> fetchData() async {
    await Future.delayed(Duration(seconds: 2)); // Simulate a delay
    return [
      DeliveryItem('iPhone 12', '123 Main St', true),
      DeliveryItem('Samsung Galaxy', '456 Oak St', false),
      DeliveryItem('Google Pixel', '789 Pine St', true),
    ];
  }
}

class DeliveryItem {
  final String phone;
  final String address;
  final bool successful;

  DeliveryItem(this.phone, this.address, this.successful);
}
// class DeliveryHistoryBloc
//     extends Bloc<DeliveryHistoryEvent, DeliveryHistoryState> {
//   DeliveryHistoryBloc() : super(DeliveryHistoryInitial());
//   @override
//   DeliveryHistoryState get initialState => DeliveryHistoryInitial();

//   @override
//   Stream<DeliveryHistoryState> mapEventToState(
//       DeliveryHistoryEvent event) async* {
//     if (event is LoadDeliveryHistory) {
//       try {
//         // Simulate loading data from an API
//         List<String> history = await fetchData();
//         yield DeliveryHistoryLoaded(history);
//       } catch (e) {
//         yield DeliveryHistoryError('Error loading delivery history');
//       }
//     }
//   }

//   Future<List<String>> fetchData() async {
//     await Future.delayed(Duration(seconds: 2)); //
//     return ['Delivery 1', 'Delivery 2', 'Delivery 3'];
//   }
// }
