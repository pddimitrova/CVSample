import 'package:cv_sample/data/model/user_response_model.dart';
import 'package:cv_sample/data/remote_data_source/user/user_api.dart';

class UserRepository {
  UserRepository(this._userApi);

  final UserApi _userApi;

  Future<UserResponseModel> getUserById(String id) =>
      _userApi.getUserById(id: id);
}
