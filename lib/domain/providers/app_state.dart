import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:emlista/domain/response/http_request_failure.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.loading() = _Loading;
  const factory AppState.failed(HttpRequestFailure failure) = _Failed;
}

// dart run build_runner build