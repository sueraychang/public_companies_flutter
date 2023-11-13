import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:publiccompanies/domain/bloc/bloc_state.dart';
import 'package:publiccompanies/domain/bloc/industry_bloc.dart';
import 'package:publiccompanies/domain/data_repository.dart';
import 'package:publiccompanies/domain/entities/industry.dart';
import 'package:publiccompanies/presentation/widgets/common_failure_widget.dart';
import 'package:publiccompanies/presentation/widgets/loading_widget.dart';
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
      body: BlocBuilder<IndustryBloc, BlocState>(
        builder: (context, state) {
          return state.when(
            loading: () {
              return const LoadingWidget();
            },
            loaded: (data) {
              final List<(Industry, int)> industries =
                  (data as Map<Industry, int>)
                      .entries
                      .map((e) => (e.key, e.value))
                      .toList();
              return ListView.separated(
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
                      trailing: const Icon(Icons.arrow_forward_ios, size: 12),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    thickness: 1,
                    height: 1,
                    indent: 0,
                    endIndent: 0,
                    color: Colors.black12,
                  );
                },
              );
            },
            error: (e) {
              return const CommonFailureWidget();
            },
          );
        },
      ),
    );
  }
}
