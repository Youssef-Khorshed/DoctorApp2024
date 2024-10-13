import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/Features/Home/Presentation/Logic/bloc/home_bloc.dart';
import 'package:flutter_complete_project/Features/Home/Presentation/Logic/bloc/home_event.dart';
import 'package:flutter_complete_project/Features/Home/Presentation/Logic/bloc/home_state.dart';
import 'package:flutter_complete_project/Features/Home/Presentation/UI/HoemScreenfooter.dart';
import 'package:flutter_complete_project/Features/Home/Presentation/UI/HomeScreenHeader.dart';
import 'package:flutter_complete_project/Features/Home/Presentation/UI/HomeScreenbody.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  void initState() {
    context.read<HomeBloc>().add(GetDoctors());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: context.watch<HomeBloc>().state is HomeLoading
              ? Center(child: CircularProgressIndicator())
              : context.watch<HomeBloc>().state is GetHomeDataSuccess
                  ? CustomScrollView(slivers: [
                      HomeScreenheader(),
                      Homescreenbody(),
                      Hoemscreenfooter()
                    ])
                  : Center(child: Text(context.watch<HomeBloc>().toString()))),
    );
  }
}
