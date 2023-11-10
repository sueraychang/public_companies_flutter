import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:publiccompanies/domain/data_repository.dart';
import 'package:publiccompanies/domain/entities/company.dart';
import 'package:publiccompanies/domain/entities/industry.dart';
import 'package:publiccompanies/domain/entities/result.dart' as result;

part 'company_bloc.freezed.dart';

@freezed
class CompanyEvent with _$CompanyEvent {
  const factory CompanyEvent.getCompany(String companyCode) = GetCompany;
}

@freezed
class CompanyState<T, E> with _$CompanyState<T, E> {
  const factory CompanyState.loading() = Loading;
  const factory CompanyState.success(T data) = Success;
  const factory CompanyState.failure(E e) = Failure;
}

class CompanyBloc extends Bloc<CompanyEvent, CompanyState> {
  final DataRepository repo;
  CompanyBloc({
    required this.repo,
  }) : super(const CompanyState.loading()) {
    on<CompanyEvent>(
      (event, emit) async {
        await event.when(
          getCompany: (companyCode) async {
            final companyResponse = await repo.getCompany(companyCode);

            if (companyResponse is result.Failure) {
              emit(Failure((companyResponse as result.Failure).e));
              return;
            }

            final Company company = (companyResponse as result.Success).data;

            final industryResponse =
                await repo.getIndustry(company.industryCode);

            industryResponse.when(
              success: (data) {
                emit(Success((company, data)));
              },
              failure: (e) {
                emit(Success((company, unknownIndustry)));
              },
            );
          },
        );
      },
    );
  }
}
