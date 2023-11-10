import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:publiccompanies/domain/bloc/launch_bloc.dart';
import 'package:publiccompanies/domain/data_repository.dart';
import 'package:publiccompanies/utils/go_router.dart';

class LaunchPage extends StatelessWidget {
  const LaunchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LaunchBloc(repo: context.read<DataRepository>())
        ..add(const GetCompaniesAndIndustries(forceUpdate: true)),
      child: const LaunchView(),
    );
  }
}

class LaunchView extends StatelessWidget {
  const LaunchView({super.key});

  @override
  Widget build(BuildContext context) {
    final logoSize = MediaQuery.of(context).size.width * 2.0 / 3.0;
    return BlocListener<LaunchBloc, LaunchState>(
      listener: (context, state) {
        state.when(
          loading: () {},
          success: (data) {        
            context.go(ROUTE_PATH_HOME);
          },
          failure: (e) {},
        );
      },
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/flutter_logo.png',
                fit: BoxFit.contain,
                width: logoSize,
                height: logoSize,
              ),
              const SizedBox(height: 32),
              const CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}
