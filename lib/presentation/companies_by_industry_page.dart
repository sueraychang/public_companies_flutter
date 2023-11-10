import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:publiccompanies/domain/bloc/companies_by_industry_bloc.dart';
import 'package:publiccompanies/domain/data_repository.dart';
import 'package:publiccompanies/domain/entities/company.dart';
import 'package:publiccompanies/domain/entities/industry.dart';
import 'package:publiccompanies/utils/go_router.dart';

class CompaniesByIndustryPage extends StatelessWidget {
  final String industryCode;
  const CompaniesByIndustryPage({super.key, required this.industryCode});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          CompaniesByIndustryBloc(repo: context.read<DataRepository>())
            ..add(
              GetCompanies(industryCode),
            ),
      child: const CompaniesByIndustryView(),
    );
  }
}

class CompaniesByIndustryView extends StatelessWidget {
  const CompaniesByIndustryView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CompaniesByIndustryBloc, CompaniesByIndustryState>(
      builder: (context, state) {
        return state.when(
          loading: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
          success: (data) {
            final response = (data as (Industry, List<Company>));
            return Scaffold(
              appBar: AppBar(
                title: Text(response.$1.name),
              ),
              body: ListView.builder(
                itemCount: response.$2.length,
                itemBuilder: (context, index) {
                  final company = response.$2[index];
                  return InkWell(
                    onTap: () {
                      context.push(ROUTE_PATH_COMPANY.replaceFirst(
                          ':companyCode', company.code));
                    },
                    child: ListTile(
                      title: Text('${company.code} ${company.abbreviation}'),
                    ),
                  );
                },
              ),
            );
          },
          failure: (e) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        );
      },
    );
  }
}
