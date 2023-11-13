import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:publiccompanies/domain/bloc/bloc_state.dart';
import 'package:publiccompanies/domain/data_repository.dart';

part 'launch_bloc.freezed.dart';

@freezed
class LaunchEvent with _$LaunchEvent {
  const factory LaunchEvent.getCompaniesAndIndustries(
      {required bool forceUpdate}) = GetCompaniesAndIndustries;
}

class LaunchBloc extends Bloc<LaunchEvent, BlocState> {
  final DataRepository repo;
  LaunchBloc({
    required this.repo,
  }) : super(const Loading()) {
    on<LaunchEvent>(
      (event, emit) async {
        await event.when(
          getCompaniesAndIndustries: (forceUpdate) async {
            await repo.getIndustries();
            final companies = await repo.getCompanies(forceUpdate: forceUpdate);
            companies.when(
              success: (data) {
                emit(Loaded(data));
              },
              failure: (e) {
                emit(Error(e));
              },
            );
          },
        );
      },
    );
  }
}
