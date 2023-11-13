import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:publiccompanies/data/data_source.dart';
import 'package:publiccompanies/data/default_data_repository.dart';
import 'package:publiccompanies/domain/data_repository.dart';
import 'package:publiccompanies/domain/entities/company.dart';
import 'package:publiccompanies/domain/entities/industry.dart';
import 'package:publiccompanies/domain/entities/result.dart';

import 'default_data_repository_test.mocks.dart';

@GenerateMocks([DataSource])
void main() {
  final local = MockDataSource();
  final remote = MockDataSource();

  late DataRepository repo;

  final testCompanies = _testCompanies.map((e) => Company.fromJson(e)).toList();

  setUp(() {
    repo = DefaultDataRepository(local: local, remote: remote);
  });

  group('Fetch industries', () {
    test('Returns industries from local storage', () async {
      when(local.getIndustries())
          .thenAnswer((_) => Future.value(const Result.success([])));

      final response = await repo.getIndustries();

      verify(local.getIndustries()).called(1);
      verifyNever(remote.getIndustries());

      expect(response, isA<Success>());
    });

    test('Fetch industry using industry code from local storage', () async {
      const testIndustry = Industry(code: '01', name: 'Industry01');
      when(local.getIndustry('01'))
          .thenAnswer((_) => Future.value(const Result.success(testIndustry)));

      final response = await repo.getIndustry('01');

      verify(local.getIndustry('01')).called(1);
      verifyNever(remote.getIndustry(any));

      expect(response, isA<Success>());
    });
  });

  group('Fetch companies', () {
    test('Force fetch companies from api and save results to local storage',
        () async {
      when(remote.getCompanies())
          .thenAnswer((_) async => Result.success(testCompanies));
      when(local.getCompanies())
          .thenAnswer((_) async => Result.success(testCompanies));
      when(local.clearCompanies())
          .thenAnswer((_) async => const Result.success(true));
      when(local.saveCompanies(companies: testCompanies))
          .thenAnswer((_) async => const Result.success(true));

      final response = await repo.getCompanies(forceUpdate: true);

      verify(remote.getCompanies()).called(1);
      verify(local.clearCompanies()).called(1);
      verify(local.saveCompanies(companies: testCompanies)).called(1);

      verify(local.getCompanies()).called(1);

      expect(response, isA<Success>());
      expect((response as Success).data, testCompanies);
    });

    test('Failed to fetch companies from api', () async {
      final exception = Exception('Failed');
      when(remote.getCompanies())
          .thenAnswer((_) async => Result.failure(exception));
      when(local.getCompanies())
          .thenAnswer((_) async => Result.success(testCompanies));

      final response = await repo.getCompanies(forceUpdate: true);

      verify(remote.getCompanies()).called(1);
      verifyNever(local.clearCompanies());
      verifyNever(local.saveCompanies(companies: testCompanies));

      verify(local.getCompanies()).called(1);

      expect(response, isA<Success>());
      expect((response as Success).data, testCompanies);
    });

    test('Fetch company using company code from local storage', () async {
      final testCompany = testCompanies[0];
      when(local.getCompany('01'))
          .thenAnswer((_) async => Result.success(testCompany));

      final response = await repo.getCompany('01');

      verify(local.getCompany('01')).called(1);
      verifyNever(remote.getCompany(any));

      expect(response, isA<Success>());
    });
  });

  group('Fetch collections', () {
    test('Returns collections from local storage', () async {
      when(local.getCollections()).thenAnswer((_) => testCompanies);

      final response = repo.getCollections();

      verify(local.getCollections()).called(1);
      verifyNever(remote.getCollections());

      expect(response, testCompanies);
    });

    test('Fetch collection using company code from local storage', () async {
      final testCollection = testCompanies[0];
      when(local.getCollection('01'))
          .thenAnswer((_) => Result.success(testCollection));

      final response = repo.getCollection('01');

      verify(local.getCollection('01')).called(1);
      verifyNever(remote.getCollection(any));

      expect(response, isA<Success>());
      expect((response as Success).data, testCollection);
    });

    test('Add to collections successfully', () async {
      final testCompany = testCompanies[0];

      when(local.addToCollections(testCompany))
          .thenAnswer((_) async => const Result.success(true));
      final response = await repo.addToCollections(testCompany);

      verify(local.addToCollections(testCompany)).called(1);
      verifyNever(remote.addToCollections(any));

      expect(response, isA<Success>());
      expect((response as Success).data, true);
    });

    test('delete from collections successfully', () async {
      when(local.deleteFromCollections('01'))
          .thenAnswer((_) async => const Result.success(true));
      final response = await repo.deleteFromCollections('01');

      verify(local.deleteFromCollections('01')).called(1);
      verifyNever(remote.deleteFromCollections(any));

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
