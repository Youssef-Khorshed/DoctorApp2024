part of 'login_cubit_cubit.dart';

@freezed
class LoginCubitState {
  const factory LoginCubitState.initial() = _Initial;

  const factory LoginCubitState.loading() = Loading;

  const factory LoginCubitState.success() = Success;

  const factory LoginCubitState.failure() = Failure;
}
