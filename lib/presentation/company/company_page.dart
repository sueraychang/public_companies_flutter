import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:publiccompanies/domain/bloc/bloc_state.dart';
import 'package:publiccompanies/domain/bloc/company_bloc.dart';
import 'package:publiccompanies/domain/data_repository.dart';
import 'package:publiccompanies/domain/entities/company.dart';
import 'package:publiccompanies/domain/entities/industry.dart';
import 'package:publiccompanies/presentation/company/company_app_bar.dart';
import 'package:publiccompanies/presentation/company/company_info_item.dart';
import 'package:publiccompanies/presentation/company/company_name_item.dart';
import 'package:publiccompanies/presentation/widgets/common_failure_widget.dart';
import 'package:publiccompanies/presentation/widgets/loading_widget.dart';
import 'package:publiccompanies/utils/build_context_extension.dart';
import 'package:publiccompanies/utils/common.dart';

class CompanyPage extends StatelessWidget {
  final String companyCode;
  const CompanyPage({super.key, required this.companyCode});

  @override
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
    return BlocBuilder<CompanyBloc, BlocState>(
      builder: (context, state) {
        return state.when(
          loading: () {
            return const LoadingWidget();
          },
          loaded: (data) {
            final response = (data as (Company, Industry));
            final company = response.$1;
            final industry = response.$2;

            return Scaffold(
              body: CustomScrollView(
                slivers: [
                  CompanyAppBar(industry: industry, company: company),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CompanyNameItem(
                            title: context.l10n.companyBasicInformation,
                            name: company.name,
                            website: company.website,
                          ),
                          const SizedBox(height: 16.0),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: CompanyInfoItem(
                                  title: context.l10n.companyChairman,
                                  content: company.chairman,
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: CompanyInfoItem(
                                  title: context.l10n.companyPresident,
                                  content: company.president,
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: CompanyInfoItem(
                                  title: context.l10n.companyIndustryType,
                                  content: industry.name,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16.0),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: CompanyInfoItem(
                                  title: context.l10n.companyEstablishmentDate,
                                  content:
                                      reformatDate(company.establishmentDate),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: CompanyInfoItem(
                                  title: context.l10n.companyListingDate,
                                  content: reformatDate(company.listingDate),
                                ),
                              ),
                            ],
                          ),
                          const Divider(height: 33, thickness: 1),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: CompanyInfoItem(
                                  title: context.l10n.companyOperator,
                                  content: company.operator,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: CompanyInfoItem(
                                  title: context.l10n.companyInvoiceNumber,
                                  content: company.invoiceNumber,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16.0),
                          CompanyInfoItem(
                            title: context.l10n.companyAddress,
                            content: company.address,
                          ),
                          const Divider(height: 33, thickness: 1),
                          CompanyInfoItem(
                            title: context.l10n.companyCapital,
                            content:
                                '${formatWithSeparator(company.capital)} ${context.l10n.dollar}',
                          ),
                          const SizedBox(height: 16.0),
                          CompanyInfoItem(
                            title: context.l10n.companyParValuePerShare,
                            content: company.parValuePerShare
                                .replaceAll(' ', '')
                                .replaceAll('新台幣', '新台幣 ')
                                .replaceAll('元', ' 元'),
                          ),
                          const SizedBox(height: 16.0),
                          CompanyInfoItem(
                            title: context.l10n.companyAuthorizedStock,
                            content:
                                '${formatWithSeparator(company.authorizedStock)} ${context.l10n.share} ${context.l10n.companyPrivateEquilty(formatWithSeparator(company.privateEquilty))}',
                          ),
                          const SizedBox(height: 16.0),
                          CompanyInfoItem(
                            title: context.l10n.companyPreferredStock,
                            content:
                                '${formatWithSeparator(company.preferredStock)} ${context.l10n.share}',
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          },
          error: (e) {
            return const CommonFailureWidget();
          },
        );
      },
    );
  }
}
