import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:publiccompanies/domain/cubit/collections_cubit.dart';
import 'package:publiccompanies/domain/data_repository.dart';
import 'package:publiccompanies/domain/entities/company.dart';
import 'package:publiccompanies/domain/entities/result.dart';

import 'collections_cubit_test.mocks.dart';

@GenerateMocks([DataRepository])
void main() {
  final repo = MockDataRepository();

  late CollectionsCubit collectionsCubit;

  final testDefaultCompanies =
      _testDefaultCompanies.map((e) => Company.fromJson(e)).toList();

  final testCompany = Company.fromJson(_testCompany);

  final testException = Exception('Failed');

  setUp(() {
    when(repo.getCollections()).thenAnswer((_) => testDefaultCompanies);

    collectionsCubit = CollectionsCubit(repo: repo);
  });

  group('CollectionsCubit', () {
    test('Initial state is from DataRepository', () {
      expect(collectionsCubit.state, testDefaultCompanies);
    });

    test('Check if the company is in the collections', () {
      when(repo.getCollection('In'))
          .thenAnswer((_) => Result.success(testDefaultCompanies[01]));
      when(repo.getCollection('Not in'))
          .thenAnswer((_) => Result.failure(testException));

      var result = collectionsCubit.isInCollections('In');
      verify(repo.getCollection('In')).called(1);

      expect(result, true);

      result = collectionsCubit.isInCollections('Not in');
      verify(repo.getCollection('Not in')).called(1);

      expect(result, false);
    });

    blocTest(
      'emits collections when add a new one',
      setUp: () {
        when(repo.addToCollections(testCompany))
            .thenAnswer((_) async => const Result.success(true));

        when(repo.getCollections()).thenAnswer((_) => testDefaultCompanies);
      },
      build: () => collectionsCubit,
      act: (cubit) => cubit.addToCollections(testCompany),
      verify: (_) {
        verify(repo.addToCollections(testCompany)).called(1);
        verifyNever(repo.deleteFromCollections(any));
      },
      expect: () => [testDefaultCompanies],
    );

    blocTest(
      'emits collections when remove an exist one',
      setUp: () {
        when(repo.deleteFromCollections(testCompany.code))
            .thenAnswer((_) async => const Result.success(true));

        when(repo.getCollections()).thenAnswer((_) => testDefaultCompanies);
      },
      build: () => collectionsCubit,
      act: (cubit) => cubit.deleteFromCollections(testCompany.code),
      verify: (_) {
        verify(repo.deleteFromCollections(testCompany.code)).called(1);
        verifyNever(repo.addToCollections(any));
      },
      expect: () => [testDefaultCompanies],
    );
  });
}

const _testDefaultCompanies = [
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
  }
];

const _testCompany = {
  "出表日期": "1121101",
  "公司代號": "000511",
  "公司名稱": "富隆證券股份有限公司",
  "公司簡稱": "富隆",
  "外國企業註冊地國": "－ ",
  "產業別": "XX",
  "住址": "北市南京東路三段287號3樓",
  "營利事業統一編號": "22956788",
  "董事長": "鄭淑華",
  "總經理": "宋世敏",
  "發言人": "宋世敏",
  "發言人職稱": "總經理",
  "代理發言人": "鄭誠棋",
  "總機電話": "27182788",
  "成立日期": "19880704",
  "上市日期": "19880704",
  "普通股每股面額": "新台幣                 10.0000元",
  "實收資本額": "738680030",
  "私募股數": "0",
  "特別股": "0",
  "編制財務報表類型": "2",
  "股票過戶機構": "富隆證券股份有限公司",
  "過戶電話": "27182788",
  "過戶地址": "台北市南京東路三段287號3樓",
  "簽證會計師事務所": "群智聯合會計師事務所",
  "簽證會計師1": "呂亞哲",
  "簽證會計師2": "吳小菁",
  "英文簡稱": "FULLONG　",
  "英文通訊地址":
      "3F.,No.287,Sec.3,Nanjing E.Rd.,Sungshan Chiu,Taipei,Taiwan 105, R.O.C　　3F.,No.287,Sec.3,Nanjing E.Rd.,Sungshan",
  "傳真機號碼": "27139123",
  "電子郵件信箱": "webadmin@fullong.com.tw",
  "網址": "http://www.fullong.com.tw　",
  "已發行普通股數或TDR原股發行股數": "73868003"
};
