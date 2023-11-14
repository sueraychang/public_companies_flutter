import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:publiccompanies/domain/bloc/bloc_state.dart';
import 'package:publiccompanies/domain/data_repository.dart';
import 'package:publiccompanies/domain/entities/industry.dart';
import 'package:publiccompanies/domain/entities/result.dart';

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
            final industriesResponse = await repo.getIndustries();
            if (industriesResponse is Failure) {
              emit(Error((industriesResponse as Failure).e));
              return;
            }

            // Generate industries map for the quick search by code.
            Map<String, Industry> industries = {};
            industries.addAll({
              for (var industry in (industriesResponse as Success).data)
                industry.code: industry
            });

            /// Initialize the emitted data map, the key is Industry and
            /// the value is its company counts.
            Map<Industry, int> results = {
              for (var industry in industries.values) industry: 0
            };

            final companies = await repo.getCompanies(forceUpdate: false);
            companies.when(
              success: (data) {
                /// Collect companies based on industry code.
                /// There are some company's industry code are not listed in the
                /// TSE產業別 provided by wireframe like "13", "XX", "98", etc.
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
