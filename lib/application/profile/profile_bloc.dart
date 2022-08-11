// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/core/error/server_failure.dart';
import '../../domain/core/params/no_param.dart';
import '../../domain/profile/entities/user.dart';
import '../../domain/profile/usecases/get_profile.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final GetProfile _getProfile;
  ProfileBloc(
    this._getProfile,
  ) : super(const ProfileState.initial()) {
    on<ProfileFetched>(_onProfileFetched);
  }

  void _onProfileFetched(
      ProfileFetched event, Emitter<ProfileState> emit) async {
    emit(const ProfileState.loading());
    var response = await _getProfile(const NoParams());

    emit(response.fold(
      (failure) => ProfileState.failure(failure),
      (user) => ProfileState.loadSuccess(user),
    ));
  }
}
