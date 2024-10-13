import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState<T> with _$HomeState<T> {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = HomeLoading;
  const factory HomeState.getHomeDataSuccess({required T resonse}) =
      GetHomeDataSuccess<T>;
  const factory HomeState.getHomeDataFail({required String errorMessage}) =
      GetHomeDataFail;
}
