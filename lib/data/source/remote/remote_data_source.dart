import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:publiccompanies/data/data_source.dart';
import 'package:publiccompanies/data/source/remote/api_helper.dart';
import 'package:publiccompanies/domain/entities/company.dart';
import 'package:publiccompanies/domain/entities/industry.dart';
import 'package:publiccompanies/domain/entities/result.dart';
import 'package:publiccompanies/utils/common.dart';

class RemoteDataSource implements DataSource {
  final ApiHelper apiHelper;

  RemoteDataSource({required this.apiHelper});

  @override
  Future<Result<List<Industry>>> getIndustries() {
    // Do NOT implement this function.
    throw UnimplementedError();
  }

  @override
  Future<Result<Industry>> getIndustry(String industryCode) {
    // Do NOT implement this function.
    throw UnimplementedError();
  }

  @override
  Future<Result<bool>> saveIndustries({required List<Industry> industries}) {
    // Do NOT implement this function.
    throw UnimplementedError();
  }

  @override
  Future<Result<bool>> clearIndustries() {
    // Do NOT implement this function.
    throw UnimplementedError();
  }

  @override
  Future<Result<List<Company>>> getCompanies() async {
    try {
      final results = await apiHelper.get('v1/opendata/t187ap03_P');
      final companies = (results as List<dynamic>)
          .map(
            (e) => Company.fromJson(e),
          )
          .toList();

      return Success(companies);
    } catch (e, s) {
      const msg = 'Failed to get companies';
      return _logThanReturn(message: msg, e: e, s: s);
    }
  }

  @override
  Future<Result<Company>> getCompany(String companyCode) {
    // Do NOT implement this function.
    throw UnimplementedError();
  }

  @override
  Future<Result<bool>> saveCompanies({required List<Company> companies}) {
    // Do NOT implement this function.
    throw UnimplementedError();
  }

  @override
  Future<Result<bool>> clearCompanies() {
    // Do NOT implement this function.
    throw UnimplementedError();
  }

  Future<Result<T>> _logThanReturn<T>(
      {required String message, Object? e, StackTrace? s}) async {
    log.e('$message \n$e \n$s');
    await FirebaseCrashlytics.instance.recordError(e, s, reason: message);
    return e != null
        ? Failure(e as Exception)
        : Failure(Exception(e ?? message));
  }

  @override
  Future<Result<bool>> addToCollection(Company company) {
    // Do NOT implement this function.
    throw UnimplementedError();
  }

  @override
  Result<Company> getCollection(String companyCode) {
    // Do NOT implement this function.
    throw UnimplementedError();
  }

  @override
  List<Company> getCollections() {
    // Do NOT implement this function.
    throw UnimplementedError();
  }

  @override
  Future<Result<bool>> deleteFromCollection(String companyCode) {
    // Do NOT implement this function.
    throw UnimplementedError();
  }
}
