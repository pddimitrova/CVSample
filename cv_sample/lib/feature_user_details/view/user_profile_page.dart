import 'package:cv_sample/data/model/user_response_model.dart';
import 'package:cv_sample/feature_user_details/bloc/user_bloc.dart';
import 'package:cv_sample/feature_user_details/bloc/user_event.dart';
import 'package:cv_sample/feature_user_details/bloc/user_state.dart';
import 'package:cv_sample/feature_user_details/view/contact_info_section.dart';
import 'package:cv_sample/feature_user_details/view/education_section.dart';
import 'package:cv_sample/feature_user_details/view/experience_section.dart';
import 'package:cv_sample/feature_user_details/view/profile_section.dart';
import 'package:cv_sample/feature_user_details/view/skills_section.dart';
import 'package:cv_sample/util/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserProfilePage extends StatelessWidget {
  UserProfilePage({@required this.userId});

  final String userId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, userState) {
          if (userState is UserInitialState) {
            return Center(
              child: RaisedButton(
                child: Text(
                  'Load User Details',
                  style: TextStyles.content,
                ),
                onPressed: () =>
                    context.bloc<UserBloc>().add(UserDetailsEvent(userId)),
              ),
            );
          } else if (userState is UserLoadingState) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (userState is UserLoadedState) {
            return _buildLoadedState(userState.user);
          }
          return Container();
        },
      ),
    );
  }

  Widget _buildLoadedState(UserResponseModel user) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.white,
          brightness: Brightness.light,
          pinned: true,
          centerTitle: false,
          automaticallyImplyLeading: false,
          expandedHeight: 100,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: false,
            titlePadding: EdgeInsets.symmetric(horizontal: 24),
            title: Text(user.name, style: TextStyles.title),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, bottom: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ContactInfoSection(
                  phoneNumber: user.phoneNumber,
                  email: user.email,
                  linkedInUrl: user.linkedInUrl,
                ),
                ProfileSection(profileDescription: user.profileDescription),
                EducationSection(educationList: user.education),
                ExperienceSection(experienceList: user.experience),
                SkillSection(
                    techSkills: user.techSkills, softSkills: user.softSkills)
              ],
            ),
          ),
        )
      ],
    );
  }
}
