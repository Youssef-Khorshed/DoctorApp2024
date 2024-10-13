import 'package:flutter/material.dart';
import 'package:flutter_complete_project/Core/Helpers/dio_factory.dart';
import 'package:flutter_complete_project/Features/Auth/Data/Model/loginModel.dart';
import 'package:flutter_complete_project/Features/Auth/Data/RepoImplementation/repoimp.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'login_cubit_state.dart';
part 'login_cubit_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginCubitState> {
  AuthRepoImp repoImp;

  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  LoginCubit({required this.repoImp}) : super(const LoginCubitState.initial());

  Future<void> emitLogin() async {
    emit(const LoginCubitState.loading());
    final result = await repoImp.login(Loginmodel(
        email: emailController.text, password: passwordController.text));
    result.fold((l) => emit(const LoginCubitState.failure()), (r) {
      DioFactory.setTokenIntoHeaderAfterLogin(r.data!.token!);
      // debugPrint(r.data!.token!);
      emit(const LoginCubitState.success());
    });
  }
}
