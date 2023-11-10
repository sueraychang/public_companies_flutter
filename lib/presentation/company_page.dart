import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:publiccompanies/domain/bloc/company_bloc.dart';
import 'package:publiccompanies/domain/data_repository.dart';
import 'package:publiccompanies/domain/entities/company.dart';
import 'package:publiccompanies/domain/entities/industry.dart';

class CompanyPage extends StatelessWidget {
  final String companyCode;
  const CompanyPage({super.key, required this.companyCode});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CompanyBloc(repo: context.read<DataRepository>())
        ..add(GetCompany(companyCode)),
      child: const CompanyView(),
    );
  }
}

class CompanyView extends StatelessWidget {
  const CompanyView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CompanyBloc, CompanyState>(
      builder: (context, state) {
        return state.when(
          loading: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
          success: (data) {
            final response = (data as (Company, Industry));
            final company = response.$1;
            final industry = response.$2;

            return Scaffold(
              appBar: AppBar(
                title: Text(industry.name),
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Text('${company.code} ${company.abbreviation}')
                  ],
                ),
              )
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
