import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:publiccompanies/domain/bloc/company_bloc.dart';
import 'package:publiccompanies/domain/cubit/collections_cubit.dart';
import 'package:publiccompanies/domain/data_repository.dart';
import 'package:publiccompanies/domain/entities/company.dart';
import 'package:publiccompanies/domain/entities/industry.dart';
import 'package:publiccompanies/presentation/collection_access_dialog.dart';
import 'package:sliver_app_bar_builder/sliver_app_bar_builder.dart';

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

class CompanyView extends StatefulWidget {
  const CompanyView({super.key});

  @override
  State<CompanyView> createState() => _CompanyViewState();
}

class _CompanyViewState extends State<CompanyView> {
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
              body: CustomScrollView(
                slivers: [
                  SliverAppBarBuilder(
                    barHeight: 56,
                    pinned: true,
                    backgroundColorAll: Colors.white,
                    leadingActions: [
                      (context, expandRatio, barHeight, overlapsContent) {
                        return SizedBox(
                          height: barHeight,
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  context.pop();
                                },
                                icon: const Icon(Icons.arrow_back_ios),
                              ),
                              AnimatedOpacity(
                                opacity: 1 - expandRatio,
                                duration: Duration.zero,
                                child: Text(industry.name),
                              ),
                            ],
                          ),
                        );
                      }
                    ],
                    initialContentHeight: 56,
                    contentBuilder: (context, expandRatio, contentHeight,
                        centerPadding, overlapsContent) {
                      return Container(
                        alignment: Alignment.centerLeft,
                        height: 56,
                        transform: Matrix4.translationValues(
                            16 + (1 - expandRatio) * 40, 0, 0),
                        child: Text(
                          '${company.code} ${company.abbreviation}',
                          style: TextStyle(
                            fontSize: 22 + expandRatio * 10,
                            color: Theme.of(context).colorScheme.onBackground,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    },
                    trailingActions: [
                      (context, expandRatio, barHeight, overlapsContent) {
                        return Builder(builder: (context) {
                          final collectionsCubit =
                              context.watch<CollectionsCubit>();
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
                                ? Icon(
                                    Icons.star,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  )
                                : const Icon(Icons.star_border_outlined),
                          );
                        });
                      },
                    ],
                  ),
                  SliverFixedExtentList(
                    itemExtent: 50.0,
                    delegate: SliverChildBuilderDelegate(
                      (context, index) => ListTile(title: Text('Item $index')),
                    ),
                  ),
                ],
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
