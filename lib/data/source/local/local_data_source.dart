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
    return Result.success(industries);
  }

  @override
  Future<Result<Industry>> getIndustry(String industryCode) async {
    final result = dbHelper.getIndustry(industryCode);
    return result != null
        ? Result.success(result)
        : Result.failure(Exception('Industry $industryCode not found.'));
  }

  @override
  Future<Result<bool>> saveIndustries(
      {required List<Industry> industries}) async {
    return Result.success(await dbHelper.saveIndustries(industries));
  }

  @override
  Future<Result<bool>> clearIndustries() async {
    return Result.success(await dbHelper.clearIndustries());
  }

  @override
  Future<Result<List<Company>>> getCompanies() {
    return Future.value(Result.success(dbHelper.getCompanies()));
  }

  @override
  Future<Result<bool>> saveCompanies({required List<Company> companies}) async {
    return Result.success(await dbHelper.saveCompanies(companies));
  }

  @override
  Future<Result<bool>> clearCompanies() async {
    return Result.success(await dbHelper.clearCompanies());
  }
}
