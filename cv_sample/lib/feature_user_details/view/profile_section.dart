import 'package:cv_sample/feature_user_details/view/user_section.dart';
import 'package:cv_sample/util/text_styles.dart';
import 'package:flutter/material.dart';

class ProfileSection extends StatelessWidget {
  ProfileSection({@required this.profileDescription});

  final String profileDescription;

  @override
  Widget build(BuildContext context) => UserSection(
      headingText: 'Profile',
      body: Text(profileDescription, style: TextStyles.content));
}
