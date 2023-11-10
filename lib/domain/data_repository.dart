import 'package:publiccompanies/domain/entities/company.dart';
import 'package:publiccompanies/domain/entities/industry.dart';
import 'package:publiccompanies/domain/entities/result.dart';

abstract class DataRepository {
  Future<Result<List<Industry>>> getIndustries();

  Future<Result<Industry>> getIndustry(String industryCode);

  Future<Result<List<Company>>> getCompanies({required bool forceUpdate});

  Future<Result<Company>> getCompany(String companyCode);

  List<Company> getCollections();

  Result<Company> getCollection(String companyCode);

  Future<Result<bool>> addToCollection(Company company);

  Future<Result<bool>> deleteFromCollection(String companyCode);
}
