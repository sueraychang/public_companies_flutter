import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:publiccompanies/domain/data_repository.dart';

part 'launch_bloc.freezed.dart';

@freezed
class LaunchEvent with _$LaunchEvent {
  const factory LaunchEvent.getCompaniesAndIndustries(
      {required bool forceUpdate}) = GetCompaniesAndIndustries;
}

@freezed
class LaunchState<T, E> with _$LaunchState<T, E> {
  const factory LaunchState.loading() = Loading;
  const factory LaunchState.success(T data) = Success;
  const factory LaunchState.failure(E e) = Failure;
}

class LaunchBloc extends Bloc<LaunchEvent, LaunchState> {
  final DataRepository repo;
  LaunchBloc({
    required this.repo,
  }) : super(const LaunchState.loading()) {
    on<LaunchEvent>(
      (event, emit) async {
        await event.when(
          getCompaniesAndIndustries: (forceUpdate) async {
            await repo.getIndustries();
            final companies = await repo.getCompanies(forceUpdate: forceUpdate);
            companies.when(
              success: (data) {
                emit(LaunchState.success(data));
              },
              failure: (e) {
                emit(LaunchState.failure(e));
              },
            );
          },
        );
      },
    );
  }
}
