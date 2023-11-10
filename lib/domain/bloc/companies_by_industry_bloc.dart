import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:publiccompanies/domain/data_repository.dart';
import 'package:publiccompanies/domain/entities/company.dart';
import 'package:publiccompanies/domain/entities/industry.dart';
import 'package:publiccompanies/domain/entities/result.dart' as result;

part 'companies_by_industry_bloc.freezed.dart';

@freezed
class CompaniesByIndustryEvent with _$CompaniesByIndustryEvent {
  const factory CompaniesByIndustryEvent.getCompanies(String industryCode) =
      GetCompanies;
}

@freezed
class CompaniesByIndustryState<T, E> with _$CompaniesByIndustryState<T, E> {
  const factory CompaniesByIndustryState.loading() = Loading;
  const factory CompaniesByIndustryState.success(T data) = Success;
  const factory CompaniesByIndustryState.failure(E e) = Failure;
}

class CompaniesByIndustryBloc
    extends Bloc<CompaniesByIndustryEvent, CompaniesByIndustryState> {
  final DataRepository repo;
  CompaniesByIndustryBloc({
    required this.repo,
  }) : super(const CompaniesByIndustryState.loading()) {
    on<CompaniesByIndustryEvent>(
      (event, emit) async {
        await event.when(
          getCompanies: (industryCode) async {
            final industryResponse = await repo.getIndustry(industryCode);

            if (industryResponse is result.Failure) {
              emit(Failure((industryResponse as result.Failure).e));
              return;
            }

            final Industry industry = (industryResponse as result.Success).data;

            final companiesResponse =
                await repo.getCompanies(forceUpdate: false);

            if (companiesResponse is result.Failure) {
              emit(Failure((companiesResponse as result.Failure).e));
              return;
            }

            final List<Company> companies =
                (companiesResponse as result.Success).data;

            emit(
              Success((
                industry,
                companies.where((c) => c.industryCode == industry.code).toList()
              )),
            );
          },
        );
      },
    );
  }
}
