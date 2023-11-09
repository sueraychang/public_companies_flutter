import 'package:publiccompanies/data/data_source.dart';
import 'package:publiccompanies/domain/data_repository.dart';

class DefaultDataRepository implements DataRepository {
  final DataSource local;
  final DataSource remote;

  DefaultDataRepository({required this.local, required this.remote});
}
