import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/Features/Auth/Presentation/Logic/LoginCubti/login_cubit_cubit.dart';
import 'package:flutter_complete_project/Features/Home/Presentation/Logic/bloc/home_bloc.dart';
import 'package:flutter_complete_project/Features/Home/Presentation/Logic/bloc/home_event.dart';

class Homescreenbody extends StatefulWidget {
  const Homescreenbody({super.key});

  @override
  State<Homescreenbody> createState() => _HomescreenbodyState();
}

class _HomescreenbodyState extends State<Homescreenbody> {
  @override
  void initState() {
    super.initState();
    //  context.read<HomeBloc>().add(GetDoctors());
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter();
  }
}
