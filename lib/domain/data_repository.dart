import 'package:publiccompanies/domain/entities/company.dart';
import 'package:publiccompanies/domain/entities/industry.dart';
import 'package:publiccompanies/domain/entities/result.dart';

abstract class DataRepository {
  Future<Result<List<Industry>>> getIndustries();

  Future<Result<Industry>> getIndustry(String industryCode);

  Future<Result<List<Company>>> getCompanies({required bool forceUpdate});
}
