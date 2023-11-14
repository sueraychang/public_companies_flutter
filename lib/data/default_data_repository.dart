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
    if (forceUpdate) {
      final results = await remote.getCompanies();
      await results.when(
        success: (data) async {
          await local.clearCompanies();
          await local.saveCompanies(companies: data);
        },
        failure: (e) {
          // Do nothing.
        },
      );
    }

    return local.getCompanies();
  }

  @override
  Future<Result<Company>> getCompany(String companyCode) {
    return local.getCompany(companyCode);
  }

  @override
  Future<Result<bool>> addToCollections(Company company) {
    return local.addToCollections(company);
  }

  @override
  Result<Company> getCollection(String companyCode) {
    return local.getCollection(companyCode);
  }

  @override
  List<Company> getCollections() {
    return local.getCollections();
  }

  @override
  Future<Result<bool>> deleteFromCollections(String companyCode) {
    return local.deleteFromCollections(companyCode);
  }
}
