import 'package:publiccompanies/domain/entities/company.dart';
import 'package:publiccompanies/domain/entities/industry.dart';
import 'package:publiccompanies/domain/entities/result.dart';

abstract class DataSource {
  Future<Result<List<Industry>>> getIndustries();

  Future<Result<bool>> saveIndustries({required List<Industry> industries});

  Future<Result<bool>> clearIndustries();

  Future<Result<List<Company>>> getCompanies();

  Future<Result<bool>> saveCompanies({required List<Company> companies});

  Future<Result<bool>> clearCompanies();
}
