import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:publiccompanies/domain/bloc/company_bloc.dart';
import 'package:publiccompanies/domain/cubit/collections_cubit.dart';
import 'package:publiccompanies/domain/data_repository.dart';
import 'package:publiccompanies/domain/entities/company.dart';
import 'package:publiccompanies/domain/entities/industry.dart';
import 'package:publiccompanies/presentation/collection_access_dialog.dart';

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
                actions: [
                  Builder(builder: (context) {
                    final collectionsCubit = context.watch<CollectionsCubit>();
                    final isInCollection =
                        collectionsCubit.isInCollections(company.code);
                    return IconButton(
                      onPressed: () {
                        if (isInCollection) {
                          showCollectionDeleteDialog(
                              context: context, company: company);
                        } else {
                          showCollectionAddDialog(
                              context: context, company: company);
                        }
                      },
                      icon: isInCollection
                          ? const Icon(Icons.star)
                          : const Icon(Icons.star_border_outlined),
                    );
                  })
                ],
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [Text('${company.code} ${company.abbreviation}')],
                ),
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
