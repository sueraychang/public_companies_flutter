import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:publiccompanies/data/data_source.dart';
import 'package:publiccompanies/data/source/local/db_helper.dart';
import 'package:publiccompanies/domain/entities/company.dart';
import 'package:publiccompanies/domain/entities/industry.dart';
import 'package:publiccompanies/domain/entities/result.dart';

class LocalDataSource implements DataSource {
  final DbHelper dbHelper;

  LocalDataSource({required this.dbHelper});

  @override
  Future<Result<List<Industry>>> getIndustries() async {
    List<Industry> industries = dbHelper.getIndustries();
    if (industries.isEmpty) {
      String data =
          await rootBundle.loadString("assets/metadata/industries.json");
      industries =
          (jsonDecode(data) as List).map((e) => Industry.fromJson(e)).toList();
      await saveIndustries(industries: industries);
    }
    return Success(industries);
  }

  @override
  Future<Result<Industry>> getIndustry(String industryCode) async {
    final result = dbHelper.getIndustry(industryCode);
    return result != null
        ? Success(result)
        : Result.failure(Exception('Industry $industryCode not found.'));
  }

  @override
  Future<Result<bool>> saveIndustries(
      {required List<Industry> industries}) async {
    return Success(await dbHelper.saveIndustries(industries));
  }

  @override
  Future<Result<bool>> clearIndustries() async {
    return Success(await dbHelper.clearIndustries());
  }

  @override
  Future<Result<List<Company>>> getCompanies() async {
    final results = dbHelper.getCompanies();
    if (results.isNotEmpty) {
      return Success(results);
    } else {
      return Failure(Exception('No companies data.'));
    }
  }

  @override
  Future<Result<Company>> getCompany(String companyCode) async {
    final result = dbHelper.getCompany(companyCode);
    return result != null
        ? Success(result)
        : Result.failure(Exception('Company $companyCode not found.'));
  }

  @override
  Future<Result<bool>> saveCompanies({required List<Company> companies}) async {
    return Success(await dbHelper.saveCompanies(companies));
  }

  @override
  Future<Result<bool>> clearCompanies() async {
    return Success(await dbHelper.clearCompanies());
  }

  @override
  Future<Result<bool>> addToCollections(Company company) async {
    return Success(await dbHelper.addToCollections(company));
  }

  @override
  Result<Company> getCollection(String companyCode) {
    final result = dbHelper.getCollection(companyCode);
    return result != null
        ? Success(result)
        : Result.failure(Exception('Collection $companyCode not found.'));
  }

  @override
  List<Company> getCollections() {
    return dbHelper.getCollections();
  }

  @override
  Future<Result<bool>> deleteFromCollections(String companyCode) async {
    return Success(await dbHelper.deleteFromCollections(companyCode));
  }
}
