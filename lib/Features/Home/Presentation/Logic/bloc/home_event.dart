import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_event.freezed.dart';

@freezed
class HomeEvent<T> with _$HomeEvent<T> {
  const factory HomeEvent.started() = _Started;
  const factory HomeEvent.getDoctorsS() = GetDoctors;
  const factory HomeEvent.searchDoctor({required String name}) = SearchDoctor;
}
