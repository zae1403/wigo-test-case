part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.loading() = _ProfileLoading;
  const factory ProfileState.failure(ServerFailure message) = _ProfileFailure;
  const factory ProfileState.loadSuccess(User user) = _ProfileLoadSuccess;
}
