import 'package:cv_sample/data/mock_data/mock_user_data.dart';
import 'package:cv_sample/data/model/user_response_model.dart';
import 'package:flutter/foundation.dart';

class UserApi {
  //region paths
  static const String userPath = '/user';

  //endregion paths

  //region query parameters

  static const String userIdQueryParam = 'userId';

  //region query parameters

  ///Fetches a [UserResponseModel] for the specified [id]
  Future<UserResponseModel> getUserById({@required String id}) async {
    ///simulate a network request delay
    await Future.delayed(Duration(seconds: 1));
    return UserResponseModel.fromJson(MockUserData.mockUser);
  }
}
