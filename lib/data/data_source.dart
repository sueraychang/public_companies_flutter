import 'package:publiccompanies/domain/entities/company.dart';
import 'package:publiccompanies/domain/entities/industry.dart';
import 'package:publiccompanies/domain/entities/result.dart';

abstract class DataSource {
  Future<Result<List<Industry>>> getIndustries();

  Future<Result<Industry>> getIndustry(String industryCode);

  Future<Result<bool>> saveIndustries({required List<Industry> industries});

  Future<Result<bool>> clearIndustries();

  Future<Result<List<Company>>> getCompanies();

  Future<Result<Company>> getCompany(String companyCode);

  Future<Result<bool>> saveCompanies({required List<Company> companies});

  Future<Result<bool>> clearCompanies();

  List<Company> getCollections();

  Result<Company> getCollection(String companyCode);

  Future<Result<bool>> addToCollection(Company company);

  Future<Result<bool>> deleteFromCollection(String companyCode);
}
