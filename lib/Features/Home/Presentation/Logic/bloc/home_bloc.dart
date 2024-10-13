import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/Features/Home/Data/Model/homeModel.dart';
import 'package:flutter_complete_project/Features/Home/Data/RepoImplementation/repoimplementation.dart';
import 'package:flutter_complete_project/Features/Home/Presentation/Logic/bloc/home_event.dart';
import 'package:flutter_complete_project/Features/Home/Presentation/Logic/bloc/home_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeRepoImplementation homeRepoImplementation;
  HomeResonse resonse = HomeResonse();
  HomeBloc(this.homeRepoImplementation) : super(const HomeState.initial()) {
    on<GetDoctors>(getHomeScreenData,
        transformer: (events, mapper) => events
            .debounceTime(const Duration(milliseconds: 500))
            .asyncExpand(mapper));
    on<SearchDoctor>(searchDoctor,
        transformer: (events, mapper) => events
            .debounceTime(const Duration(milliseconds: 500))
            .asyncExpand(mapper));
  }

  Future<void> getHomeScreenData(
      GetDoctors event, Emitter<HomeState> emit) async {
    emit(const HomeState.loading());
    final value = await homeRepoImplementation.getHomeData();
    value.fold(
        (l) => emit(
            HomeState.getHomeDataFail(errorMessage: l.apiErrorModel.message!)),
        (r) {
      resonse = r;
      emit(const HomeState.getHomeDataSuccess(resonse: reopen));
    });
  }

  FutureOr<void> searchDoctor(SearchDoctor event, Emitter<HomeState> emit) {}
}
