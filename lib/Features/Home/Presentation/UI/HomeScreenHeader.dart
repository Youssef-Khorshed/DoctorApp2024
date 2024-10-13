import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/Core/Theme/Styles/textStyles.dart';
import 'package:flutter_complete_project/Core/di/dependencyInjection.dart';
import 'package:flutter_complete_project/Features/Auth/Data/DataSource/remote.dart';
import 'package:flutter_complete_project/Features/Auth/Presentation/Logic/LoginCubti/login_cubit_cubit.dart';
import 'package:flutter_complete_project/Features/Home/Data/Datasource/homeremote.dart';
import 'package:flutter_complete_project/Features/Home/Presentation/Logic/bloc/home_bloc.dart';
import 'package:flutter_complete_project/Features/Home/Presentation/Logic/bloc/home_event.dart';
import 'package:flutter_complete_project/Features/Home/Presentation/Logic/bloc/home_state.dart';

class HomeScreenheader extends StatelessWidget {
  const HomeScreenheader({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Text(
        context.read<HomeBloc>().state is Loading
            ? context.read<HomeBloc>().resonse.data![0].doctors![0].name![0]
            : "Home",
        style: TextStyles.font18grayExtraDark,
      ),
      leading: Container(),
      actions: [
        TextButton(
            onPressed: () {
              context.read<HomeBloc>().add(const GetDoctors());
            },
            child: Text(context
                .read<HomeBloc>()
                .resonse
                .data!
                .first
                .doctors!
                .first
                .id
                .toString()))
      ],
    );
  }
}
