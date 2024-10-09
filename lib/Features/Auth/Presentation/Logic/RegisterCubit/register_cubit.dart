import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/Features/Auth/Data/Model/registerModel.dart';
import 'package:flutter_complete_project/Features/Auth/Data/RepoImplementation/repoimp.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_state.dart';
part 'register_cubit.freezed.dart';

class RegisterCubit extends Cubit<RegisterState> {
  AuthRepoImp repoImp;
  RegisterCubit({required this.repoImp}) : super(const RegisterState.init());

  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  Future<void> emitRegister() async {
    emit(const RegisterState.loading());
    final result = await repoImp.registetr(Registermodel(
      name: getname(email: emailController.text),
      password: passwordController.text,
      email: emailController.text,
      phone: phoneController.text,
      confirmPassword: passwordController.text,
      gender: 24,
    ));
    result.fold((l) => emit(const RegisterState.failure()),
        (r) => emit(const RegisterState.success()));
  }
}

String getname({required String email}) {
  // Split the email at the '@' character
  List<String> parts = email.split('@');
  // Check if the split resulted in two parts
  return parts.length == 2 ? parts[0] : 'User'; // Everything before the '@'
}
