import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:publiccompanies/domain/bloc/bloc_state.dart';
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

class CompaniesByIndustryBloc
    extends Bloc<CompaniesByIndustryEvent, BlocState> {
  final DataRepository repo;
  CompaniesByIndustryBloc({
    required this.repo,
  }) : super(const Loading()) {
    on<CompaniesByIndustryEvent>(
      (event, emit) async {
        await event.when(
          getCompanies: (industryCode) async {
            final industryResponse = await repo.getIndustry(industryCode);

            if (industryResponse is result.Failure) {
              emit(Error((industryResponse as result.Failure).e));
              return;
            }

            final Industry industry = (industryResponse as result.Success).data;

            final companiesResponse =
                await repo.getCompanies(forceUpdate: false);

            if (companiesResponse is result.Failure) {
              emit(Error((companiesResponse as result.Failure).e));
              return;
            }

            final List<Company> companies =
                (companiesResponse as result.Success).data;

            emit(
              Loaded((
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
