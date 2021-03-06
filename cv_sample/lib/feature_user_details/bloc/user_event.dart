import 'package:equatable/equatable.dart';

abstract class UserEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class UserDetailsEvent extends UserEvent {
  final String userId;

  UserDetailsEvent(this.userId);

  @override
  List<Object> get props => [userId];
}
