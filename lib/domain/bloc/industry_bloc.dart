import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:publiccompanies/domain/bloc/bloc_state.dart';
import 'package:publiccompanies/domain/data_repository.dart';
import 'package:publiccompanies/domain/entities/industry.dart';
import 'package:publiccompanies/domain/entities/result.dart' as result;

part 'industry_bloc.freezed.dart';

@freezed
class IndustryEvent with _$IndustryEvent {
  const factory IndustryEvent.getIndustries() = GetIndustries;
}

class IndustryBloc extends Bloc<IndustryEvent, BlocState> {
  final DataRepository repo;
  IndustryBloc({
    required this.repo,
  }) : super(const Loading()) {
    on<IndustryEvent>(
      (event, emit) async {
        await event.when(
          getIndustries: () async {
            Map<String, Industry> industries = {};
            await repo.getIndustries().then((value) {
              final List<Industry> industryList =
                  (value as result.Success).data;
              industries.addAll(
                  {for (var industry in industryList) industry.code: industry});
            });

            Map<Industry, int> results = {
              for (var industry in industries.values) industry: 0
            };

            final companies = await repo.getCompanies(forceUpdate: false);
            companies.when(
              success: (data) {
                /// Collect companies based on industry code.
                /// There are some company's industry code are not listed in the TSE產業別
                /// provided by wireframe like "13", "XX", "98", etc.
                /// Need to make sure how to handle these companies data.
                for (var company in data) {
                  if (industries.containsKey(company.industryCode)) {
                    final industry = industries[company.industryCode]!;
                    results[industry] = results[industry]! + 1;
                  }
                }

                // Sort map by Industry code.
                final sortedByIndustryCode =
                    Map.fromEntries(results.entries.toList()
                      ..sort(
                        (a, b) => a.key.code.compareTo(b.key.code),
                      ));

                emit(Loaded(sortedByIndustryCode));
              },
              failure: (e) {
                emit(Error(e));
              },
            );
          },
        );
      },
    );
  }
}
