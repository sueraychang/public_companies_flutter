import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:publiccompanies/domain/bloc/bloc_state.dart';
import 'package:publiccompanies/domain/data_repository.dart';
import 'package:publiccompanies/domain/entities/company.dart';
import 'package:publiccompanies/domain/entities/industry.dart';
import 'package:publiccompanies/domain/entities/result.dart' as result;

part 'company_bloc.freezed.dart';

@freezed
class CompanyEvent with _$CompanyEvent {
  const factory CompanyEvent.getCompany(String companyCode) = GetCompany;
}

class CompanyBloc extends Bloc<CompanyEvent, BlocState> {
  final DataRepository repo;
  CompanyBloc({
    required this.repo,
  }) : super(const Loading()) {
    on<CompanyEvent>(
      (event, emit) async {
        await event.when(
          getCompany: (companyCode) async {
            final companyResponse = await repo.getCompany(companyCode);

            if (companyResponse is result.Failure) {
              emit(Error((companyResponse as result.Failure).e));
              return;
            }

            final Company company = (companyResponse as result.Success).data;

            final industryResponse =
                await repo.getIndustry(company.industryCode);

            industryResponse.when(
              success: (data) {
                emit(Loaded((company, data)));
              },
              failure: (e) {
                emit(Loaded((company, unknownIndustry)));
              },
            );
          },
        );
      },
    );
  }
}
