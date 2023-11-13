import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:publiccompanies/data/source/local/db_helper.dart';
import 'package:publiccompanies/data/source/local/local_data_source.dart';
import 'package:publiccompanies/domain/entities/company.dart';
import 'package:publiccompanies/domain/entities/industry.dart';
import 'package:publiccompanies/domain/entities/result.dart';

import 'local_data_source_test.mocks.dart';

@GenerateMocks([DbHelper])
void main() {
  WidgetsFlutterBinding.ensureInitialized();

  final dbHelper = MockDbHelper();

  late LocalDataSource localDataSource;

  final testIndustries = [
    const Industry(code: '01', name: 'Industry01'),
    const Industry(code: '02', name: 'Industry02'),
  ];

  final testCompanies = _testCompanies.map((e) => Company.fromJson(e)).toList();

  setUp(() {
    localDataSource = LocalDataSource(dbHelper: dbHelper);
  });

  group('Access industries', () {
    test('Fetch industries from assets', () async {
      String data =
          await rootBundle.loadString("assets/metadata/industries.json");
      final industries =
          (jsonDecode(data) as List).map((e) => Industry.fromJson(e)).toList();

      when(dbHelper.getIndustries()).thenAnswer((_) => []);
      when(dbHelper.saveIndustries(industries))
          .thenAnswer((_) => Future.value(true));

      final response = await localDataSource.getIndustries();

      verify(dbHelper.saveIndustries(industries)).called(1);

      expect(response, isA<Success>());
      expect((response as Success).data, industries);
    });

    test('Fetch industries from local storage', () async {
      when(dbHelper.getIndustries()).thenAnswer((_) => testIndustries);
      final response = await localDataSource.getIndustries();

      verifyNever(dbHelper.saveIndustries(any));

      expect(response, isA<Success>());
      expect((response as Success).data, testIndustries);
    });

    test('Fetch industry by industry code successfully', () async {
      const testIndustry = Industry(code: '01', name: 'Industry01');

      when(dbHelper.getIndustry('01')).thenAnswer((_) => testIndustry);
      final response = await localDataSource.getIndustry('01');

      verify(dbHelper.getIndustry('01')).called(1);

      expect(response, isA<Success>());
      expect((response as Success).data, testIndustry);
    });

    test('Fetch industry by unknown industry code', () async {
      when(dbHelper.getIndustry('01')).thenAnswer((_) => null);
      final response = await localDataSource.getIndustry('01');

      verify(dbHelper.getIndustry('01')).called(1);

      expect(response, isA<Failure>());
    });

    test('Save industries successfully', () async {
      when(dbHelper.saveIndustries(testIndustries))
          .thenAnswer((_) => Future.value(true));
      final response =
          await localDataSource.saveIndustries(industries: testIndustries);

      verify(dbHelper.saveIndustries(testIndustries)).called(1);

      expect(response, isA<Success>());
      expect((response as Success).data, true);
    });

    test('Clear industries successfully', () async {
      when(dbHelper.clearIndustries()).thenAnswer((_) => Future.value(true));
      final response = await localDataSource.clearIndustries();

      verify(dbHelper.clearIndustries()).called(1);

      expect(response, isA<Success>());
      expect((response as Success).data, true);
    });
  });

  group('Access companies', () {
    test('Fetch companies successfully', () async {
      when(dbHelper.getCompanies()).thenAnswer((_) => testCompanies);

      final response = await localDataSource.getCompanies();

      verify(dbHelper.getCompanies()).called(1);

      expect(response, isA<Success>());
      expect((response as Success).data, testCompanies);
    });

    test('Fetch companies failed', () async {
      when(dbHelper.getCompanies()).thenAnswer((_) => []);

      final response = await localDataSource.getCompanies();

      verify(dbHelper.getCompanies()).called(1);

      expect(response, isA<Failure>());
    });

    test('Fetch company by company code successfully', () async {
      final testCompany = testCompanies[0];

      when(dbHelper.getCompany('000104')).thenAnswer((_) => testCompany);
      final response = await localDataSource.getCompany('000104');

      verify(dbHelper.getCompany('000104')).called(1);

      expect(response, isA<Success>());
      expect((response as Success).data, testCompany);
    });

    test('Fetch company by unknown industry code', () async {
      when(dbHelper.getCompany('01')).thenAnswer((_) => null);
      final response = await localDataSource.getCompany('01');

      verify(dbHelper.getCompany('01')).called(1);

      expect(response, isA<Failure>());
    });

    test('Save companies successfully', () async {
      when(dbHelper.saveCompanies(testCompanies))
          .thenAnswer((_) => Future.value(true));
      final response =
          await localDataSource.saveCompanies(companies: testCompanies);

      verify(dbHelper.saveCompanies(testCompanies)).called(1);

      expect(response, isA<Success>());
      expect((response as Success).data, true);
    });

    test('Clear companies successfully', () async {
      when(dbHelper.clearCompanies()).thenAnswer((_) => Future.value(true));
      final response = await localDataSource.clearCompanies();

      verify(dbHelper.clearCompanies()).called(1);

      expect(response, isA<Success>());
      expect((response as Success).data, true);
    });
  });

  group('Access collections', () {
    test('Fetch collections successfully', () async {
      when(dbHelper.getCollections()).thenAnswer((_) => testCompanies);

      final response = localDataSource.getCollections();

      verify(dbHelper.getCollections()).called(1);

      expect(response, testCompanies);
    });

    test('Fetch collection by company code successfully', () async {
      final testCompany = testCompanies[0];

      when(dbHelper.getCollection('000104')).thenAnswer((_) => testCompany);
      final response = localDataSource.getCollection('000104');

      verify(dbHelper.getCollection('000104')).called(1);

      expect(response, isA<Success>());
      expect((response as Success).data, testCompany);
    });

    test('Fetch collection by unknown industry code', () async {
      when(dbHelper.getCollection('01')).thenAnswer((_) => null);
      final response = localDataSource.getCollection('01');

      verify(dbHelper.getCollection('01')).called(1);

      expect(response, isA<Failure>());
    });

    test('Add to collections successfully', () async {
      final testCompany = testCompanies[0];

      when(dbHelper.addToCollections(testCompany))
          .thenAnswer((_) => Future.value(true));
      final response = await localDataSource.addToCollections(testCompany);

      verify(dbHelper.addToCollections(testCompany)).called(1);

      expect(response, isA<Success>());
      expect((response as Success).data, true);
    });

    test('delete from collections successfully', () async {
      when(dbHelper.deleteFromCollections('01')).thenAnswer((_) => Future.value(true));
      final response = await localDataSource.deleteFromCollections('01');

      verify(dbHelper.deleteFromCollections('01')).called(1);

      expect(response, isA<Success>());
      expect((response as Success).data, true);
    });
  });
}

const _testCompanies = [
  {
    "出表日期": "1121101",
    "公司代號": "000104",
    "公司名稱": "臺銀綜合證券股份有限公司",
    "公司簡稱": "臺銀證券",
    "外國企業註冊地國": "－ ",
    "產業別": "XX",
    "住址": "臺北市重慶南路1段58號4~9樓",
    "營利事業統一編號": "28428390",
    "董事長": "許慈美",
    "總經理": "謝秀賢",
    "發言人": "林溫琴",
    "發言人職稱": "副總經理",
    "代理發言人": "管理部梁文奎經理",
    "總機電話": "(02)2388-2188",
    "成立日期": "20080102",
    "上市日期": "20131021",
    "普通股每股面額": "新台幣                 10.0000元",
    "實收資本額": "3000000000",
    "私募股數": "0",
    "特別股": "0",
    "編制財務報表類型": "2",
    "股票過戶機構": "",
    "過戶電話": "",
    "過戶地址": "",
    "簽證會計師事務所": "安侯建業聯合會計師事務所",
    "簽證會計師1": "陳富仁",
    "簽證會計師2": "陳奕任",
    "英文簡稱": "BankTaiwan Sec.",
    "英文通訊地址":
        "4~9F., No.58, Sec. 1, Chongching S. Rd., Jhongjheng DistrictTaipei City 100, Taiwan (R.O.C.)",
    "傳真機號碼": "(02)2371-7121",
    "電子郵件信箱": "sec00301@twfhcsec.com.tw",
    "網址": "http://www.twfhcsec.com.tw",
    "已發行普通股數或TDR原股發行股數": "0"
  },
  {
    "出表日期": "1121101",
    "公司代號": "000218",
    "公司名稱": "亞東證券股份有限公司",
    "公司簡稱": "亞東證券",
    "外國企業註冊地國": "－ ",
    "產業別": "XX",
    "住址": "新北市板橋區新站路16號13、14樓",
    "營利事業統一編號": "36552651",
    "董事長": "杜金森",
    "總經理": "王珮恩",
    "發言人": "王珮恩",
    "發言人職稱": "總經理",
    "代理發言人": "譚紘富",
    "總機電話": "(02)77531899",
    "成立日期": "19790524",
    "上市日期": "19840822",
    "普通股每股面額": "新台幣                 10.0000元",
    "實收資本額": "4222789020",
    "私募股數": "0",
    "特別股": "0",
    "編制財務報表類型": "1",
    "股票過戶機構": "亞東證券股務代理部",
    "過戶電話": "(02)77531699",
    "過戶地址": "新北市板橋區新站路16號13樓",
    "簽證會計師事務所": "勤業眾信聯合會計師事務所",
    "簽證會計師1": "莊碧玉",
    "簽證會計師2": "張正修",
    "英文簡稱": "　OSC　",
    "英文通訊地址":
        "13、14F,NO 16, Xinzhan Rd.,Banqiao Dist.New Taipei City, Taiwan, R.O.C　",
    "傳真機號碼": "(02)77531845",
    "電子郵件信箱": "admin@osc.com.tw　",
    "網址": "http://www.osc.com.tw　",
    "已發行普通股數或TDR原股發行股數": "422278902"
  },
];
