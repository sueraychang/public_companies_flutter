// Mocks generated by Mockito 5.4.2 from annotations
// in publiccompanies/test/data/source/local/local_data_source_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:publiccompanies/data/source/local/db_helper.dart' as _i2;
import 'package:publiccompanies/domain/entities/company.dart' as _i5;
import 'package:publiccompanies/domain/entities/industry.dart' as _i4;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

/// A class which mocks [DbHelper].
///
/// See the documentation for Mockito's code generation for more information.
class MockDbHelper extends _i1.Mock implements _i2.DbHelper {
  MockDbHelper() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<dynamic> init() => (super.noSuchMethod(
        Invocation.method(
          #init,
          [],
        ),
        returnValue: _i3.Future<dynamic>.value(),
      ) as _i3.Future<dynamic>);

  @override
  List<_i4.Industry> getIndustries() => (super.noSuchMethod(
        Invocation.method(
          #getIndustries,
          [],
        ),
        returnValue: <_i4.Industry>[],
      ) as List<_i4.Industry>);

  @override
  _i4.Industry? getIndustry(String? industryCode) =>
      (super.noSuchMethod(Invocation.method(
        #getIndustry,
        [industryCode],
      )) as _i4.Industry?);

  @override
  _i3.Future<bool> saveIndustries(List<_i4.Industry>? industries) =>
      (super.noSuchMethod(
        Invocation.method(
          #saveIndustries,
          [industries],
        ),
        returnValue: _i3.Future<bool>.value(false),
      ) as _i3.Future<bool>);

  @override
  _i3.Future<bool> clearIndustries() => (super.noSuchMethod(
        Invocation.method(
          #clearIndustries,
          [],
        ),
        returnValue: _i3.Future<bool>.value(false),
      ) as _i3.Future<bool>);

  @override
  List<_i5.Company> getCompanies() => (super.noSuchMethod(
        Invocation.method(
          #getCompanies,
          [],
        ),
        returnValue: <_i5.Company>[],
      ) as List<_i5.Company>);

  @override
  _i5.Company? getCompany(String? companyCode) =>
      (super.noSuchMethod(Invocation.method(
        #getCompany,
        [companyCode],
      )) as _i5.Company?);

  @override
  _i3.Future<bool> saveCompanies(List<_i5.Company>? companies) =>
      (super.noSuchMethod(
        Invocation.method(
          #saveCompanies,
          [companies],
        ),
        returnValue: _i3.Future<bool>.value(false),
      ) as _i3.Future<bool>);

  @override
  _i3.Future<bool> clearCompanies() => (super.noSuchMethod(
        Invocation.method(
          #clearCompanies,
          [],
        ),
        returnValue: _i3.Future<bool>.value(false),
      ) as _i3.Future<bool>);

  @override
  List<_i5.Company> getCollections() => (super.noSuchMethod(
        Invocation.method(
          #getCollections,
          [],
        ),
        returnValue: <_i5.Company>[],
      ) as List<_i5.Company>);

  @override
  _i5.Company? getCollection(String? companyCode) =>
      (super.noSuchMethod(Invocation.method(
        #getCollection,
        [companyCode],
      )) as _i5.Company?);

  @override
  _i3.Future<bool> addToCollections(_i5.Company? company) =>
      (super.noSuchMethod(
        Invocation.method(
          #addToCollections,
          [company],
        ),
        returnValue: _i3.Future<bool>.value(false),
      ) as _i3.Future<bool>);

  @override
  _i3.Future<bool> deleteFromCollections(String? companyCode) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteFromCollections,
          [companyCode],
        ),
        returnValue: _i3.Future<bool>.value(false),
      ) as _i3.Future<bool>);

  @override
  _i3.Future<bool> clearCollections() => (super.noSuchMethod(
        Invocation.method(
          #clearCollections,
          [],
        ),
        returnValue: _i3.Future<bool>.value(false),
      ) as _i3.Future<bool>);
}
