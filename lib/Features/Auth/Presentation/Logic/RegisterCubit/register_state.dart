part of 'register_cubit.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.init() = _Initial;

  const factory RegisterState.loading() = Loading;

  const factory RegisterState.success() = Success;

  const factory RegisterState.failure() = Failure;
}
