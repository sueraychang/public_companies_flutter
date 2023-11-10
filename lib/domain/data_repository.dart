import 'package:publiccompanies/domain/entities/company.dart';
import 'package:publiccompanies/domain/entities/industry.dart';
import 'package:publiccompanies/domain/entities/result.dart';

abstract class DataRepository {
  Future<Result<List<Industry>>> getIndustries();

  Future<Result<List<Company>>> getCompanies({required bool forceUpdate});
}
