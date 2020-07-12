import 'package:cv_sample/data/model/user_response_model.dart';
import 'package:flutter/foundation.dart';

class UserApi {
  //region paths
  static const String userPath = '/user';

  //endregion paths

  //region query parameters

  static const String userIdQueryParam = 'userId';

  //region query parameters

  Future<UserResponseModel> getUserById({@required String id}) async {
    return UserResponseModel.fromJson({
      'Id': '1',
      'Name': 'Plamena Dimitrova',
      'PhoneNumber': '+359884485234',
      'Email': 'plamena.d.dimitrova93@gmail.com',
      'LinkedInUrl': 'https://www.linkedin.com/in/plamenaddimitrova/',
      'ProfileImageUrl':
          'https://media-exp1.licdn.com/dms/image/C5603AQHawRHypHdeLw/profile-displayphoto-shrink_400_400/0?e=1600300800&v=beta&t=EUUGjrNxFGKQUTYtYTv98rxhgSJf01yvKmFcy2LQMiM',
      'ProfileDescription':
          'Learning and improving since 1993. An ambitious software engineer with 4+ years of professional experience in mobile development, 1+ year in Flutter exclusively. A Flutter developer from a native Android background that has worked through some of the most popular cross-platform frameworks, namely Xamarin, React Native and finally Flutter. Loves trying out new technologies and following the best practices to build a unique end product laying its foundations on a stable and scalable architecture. Excellent at building mutually beneficial professional relationships that last beyond the terms of employment.',
      'Education': [
        {
          'School': 'American University in Bulgaria',
          'Degree':
              'Double Major in Computer Science and Business Administration, BSc',
          'YearStart': '2012',
          'YearEnd': '2017',
        }
      ],
      'Experience': [
        {
          'Company': 'Prime Holding JSC',
          'Position': 'Mobile Team Lead',
          'Location': 'Blagoevgrad, Bulgaria',
          'Description':
              'Work closely with clients from the inception of ideas to the moment the application is in production ensuring the end result exceeds the expectations.Groom user stories, give technical feedback to product owners, write technical tasks based on the user stories, assign tasks to team members, ensure excellency of merged code. Write code actively, help team members implement complex flows.',
          'DateStart': '01/2020',
          'DateEnd': null,
        },
        {
          'Company': 'Prime Holding JSC',
          'Position': 'Mobile Software Engineer',
          'Location': 'Blagoevgrad, Bulgaria',
          'Description':
              'As developer:\nParticipate in full lifecycle of development on various client projects, namely developing features and writing unit tests.\nAs consultant:\nHelp clients shape their product vision by providing technical insights, industry best practices and ideas.\nAs mentor:\nInterview current interns to help in selecting the most prospective ones to move forward to permanent employment contracts. Help colleagues by sharing professional experience and aid them through navigating new technologies.',
          'DateStart': '01/2020',
          'DateEnd': '12/2019',
        }
      ],
      'TechSkills': ['Flutter', 'Dart', 'Kotlin', 'Java'],
      'SoftSkills': [
        'Communication',
        'Teamwork/Collaboration',
        'Constructive Feedback',
        'Friendly',
        'Problem Solving',
        'Organized',
        'Self-motivated',
        'Experimentator by nature',
        'Passion for detail',
        'Fun'
      ],
    });
  }
}
