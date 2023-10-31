import 'package:clonemartapp/widget/page/splash_screen/bloc/splash_screen_event.dart';
import 'package:clonemartapp/widget/page/splash_screen/bloc/splash_screen_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreenBloc extends Bloc<SplashScreenEvent, SplashScreenState> {
  SplashScreenBloc() : super(SplashScreenState()) {
    // Đăng ký trình xử lý sự kiện cho SplashScreenInitialized
    on<SplashScreenInitialized>((event, emit) async {
      // Thực hiện xử lý cho sự kiện này ở đây
      await Future.delayed(const Duration(seconds: 2));
      emit(SplashScreenFinished());
    });
  }
}
