import 'package:cv_sample/data/model/user_response_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class UserState extends Equatable {
  @override
  List<Object> get props => [];
}

class UserInitialState extends UserState {}

class UserLoadingState extends UserState {}

class UserLoadedState extends UserState {
  final UserResponseModel user;

  UserLoadedState({this.user});

  @override
  List<Object> get props => [user];
}
