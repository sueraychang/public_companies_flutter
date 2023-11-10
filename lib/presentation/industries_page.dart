import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:publiccompanies/domain/bloc/industry_bloc.dart';
import 'package:publiccompanies/domain/data_repository.dart';
import 'package:publiccompanies/domain/entities/industry.dart';
import 'package:publiccompanies/utils/build_context_extension.dart';
import 'package:publiccompanies/utils/go_router.dart';

class IndustriesPage extends StatelessWidget {
  const IndustriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => IndustryBloc(repo: context.read<DataRepository>())
        ..add(const GetIndustries()),
      child: const IndustriesView(),
    );
  }
}

class IndustriesView extends StatelessWidget {
  const IndustriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.industriesPageTitle),
      ),
      body: BlocBuilder<IndustryBloc, IndustryState>(
        builder: (context, state) {
          return state.when(
            loading: () {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            success: (data) {
              final List<(Industry, int)> industries =
                  (data as Map<Industry, int>)
                      .entries
                      .map((e) => (e.key, e.value))
                      .toList();
              return ListView.builder(
                itemCount: industries.length,
                itemBuilder: (context, index) {
                  final value = industries[index];
                  return InkWell(
                    onTap: value.$2 != 0
                        ? () {
                            context.push(ROUTE_PATH_COMPANIES_BY_INDUSTRY
                                .replaceFirst(':industryCode', value.$1.code));
                          }
                        : null,
                    child: ListTile(
                      title: Text('${value.$1.name}(${value.$2})'),
                    ),
                  );
                },
              );
            },
            failure: (e) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          );
        },
      ),
    );
  }
}
