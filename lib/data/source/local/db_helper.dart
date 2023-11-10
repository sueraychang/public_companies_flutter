import 'package:hive_flutter/hive_flutter.dart';
import 'package:publiccompanies/domain/entities/company.dart';
import 'package:publiccompanies/domain/entities/industry.dart';

const String _hiveBoxCompanies = 'box_companies';
const String _hiveBoxIndustries = 'box_industries';

class DbHelper {
  late final Box<Industry> _industries;
  late final Box<Company> _companies;

  Future init() async {
    await Hive.initFlutter();

    Hive.registerAdapter(IndustryAdapter());
    Hive.registerAdapter(CompanyAdapter());

    _industries = await Hive.openBox<Industry>(_hiveBoxIndustries);
    _companies = await Hive.openBox<Company>(_hiveBoxCompanies);
  }

  List<Industry> getIndustries() {
    return _industries.values.toList();
  }

  Industry? getIndustry(String industryCode) {
    return _industries.get(industryCode);
  }

  Future<bool> saveIndustries(List<Industry> industries) async {
    final industriesMap = {for (var industry in industries) industry.code: industry};
    await _industries.putAll(industriesMap);
    return true;
  }

  Future<bool> clearIndustries() async {
    await _industries.clear();
    return true;
  }

  List<Company> getCompanies() {
    return _companies.values.toList();
  }

  Company? getCompany(String companyCode) {
    return _companies.get(companyCode);
  }

  Future<bool> saveCompanies(List<Company> companies) async {
    final companiesMap = {for (var company in companies) company.code: company};
    await _companies.putAll(companiesMap);
    return true;
  }

  Future<bool> clearCompanies() async {
    await _companies.clear();
    return true;
  }
}
