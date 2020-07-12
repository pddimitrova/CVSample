import 'package:cv_sample/data/repository/user_repository.dart';
import 'package:cv_sample/feature_user_details/bloc/user_event.dart';
import 'package:cv_sample/feature_user_details/bloc/user_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc(this._userRepository) : super(UserInitialState());

  final UserRepository _userRepository;

  @override
  Stream<UserState> mapEventToState(UserEvent event) async* {
    if (event is UserDetailsEvent) {
      yield UserLoadingState();
      final userResponse = await _userRepository.getUserById(event.userId);
      yield UserLoadedState(user: userResponse);
    }
  }
}
