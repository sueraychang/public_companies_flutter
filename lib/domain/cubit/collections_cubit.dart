import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:publiccompanies/domain/data_repository.dart';
import 'package:publiccompanies/domain/entities/company.dart';
import 'package:publiccompanies/domain/entities/result.dart';

class CollectionsCubit extends Cubit<List<Company>> {
  final DataRepository repo;
  CollectionsCubit({required this.repo}) : super(repo.getCollections());

  bool isInCollections(String companyCode) {
    final result = repo.getCollection(companyCode);
    return result is Success;
  }

  Future addToCollections(Company company) async {
    await repo.addToCollections(company);
    emit(repo.getCollections());
  }

  Future deleteFromCollections(String companyCode) async {
    await repo.deleteFromCollections(companyCode);
    emit(repo.getCollections());
  }
}
