import 'dart:io';
import 'package:clonemartapp/domain/use_case/entities/data_state.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

mixin ConvertAbleDataState {
  DataState<A> convertToDataState<A, B>(
      HttpResponse<B> response, BaseMapper<A, B> mapper) {
    if (response.response.statusCode == HttpStatus.ok) {
      return DataSuccess<A>(mapper.call(response.data));
    }
    return DataFailed<A>(
      DioError(
        error: response.response.statusMessage,
        response: response.response,
        type: DioErrorType.badResponse,
        requestOptions: response.response.requestOptions,
      ),
    );
  }
}

abstract class BaseMapper<A, B> {
  A call(B? response);
}
