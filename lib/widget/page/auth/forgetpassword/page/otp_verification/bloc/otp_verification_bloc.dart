import 'package:bloc/bloc.dart';
import 'package:clonemartapp/widget/page/auth/forgetpassword/page/otp_verification/bloc/otp_verification_event.dart';

part 'otp_verification_state.dart';

class OtpVerificationBloc
    extends Bloc<OtpVerificationEvent, OtpVerificationInitial> {
  OtpVerificationBloc() : super(OtpVerificationInitial()) {}
}
