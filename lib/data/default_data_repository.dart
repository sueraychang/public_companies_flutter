import 'package:publiccompanies/data/data_source.dart';
import 'package:publiccompanies/domain/data_repository.dart';
import 'package:publiccompanies/domain/entities/company.dart';
import 'package:publiccompanies/domain/entities/industry.dart';
import 'package:publiccompanies/domain/entities/result.dart';

class DefaultDataRepository implements DataRepository {
  final DataSource local;
  final DataSource remote;

  DefaultDataRepository({required this.local, required this.remote});

  @override
  Future<Result<List<Industry>>> getIndustries() {
    return local.getIndustries();
  }

  @override
  Future<Result<Industry>> getIndustry(String industryCode) {
    return local.getIndustry(industryCode);
  }

  @override
  Future<Result<List<Company>>> getCompanies(
      {required bool forceUpdate}) async {
    if (!forceUpdate) {
      final results = await local.getCompanies();
      if (results is Success) {
        return results;
      }
    }

    final results = await remote.getCompanies();
    if (results is Success) {
      final companies = (results as Success).data;
      local.saveCompanies(companies: companies);
    }
    return results;
  }

  @override
  Future<Result<Company>> getCompany(String companyCode) {
    return local.getCompany(companyCode);
  }
}
