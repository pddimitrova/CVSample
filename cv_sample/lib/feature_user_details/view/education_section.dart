import 'package:cv_sample/data/model/user_response_model.dart';
import 'package:cv_sample/feature_user_details/view/user_section.dart';
import 'package:cv_sample/util/color_styles.dart';
import 'package:cv_sample/util/text_styles.dart';
import 'package:flutter/material.dart';

class EducationSection extends StatelessWidget {
  EducationSection({@required this.educationList});

  final List<Education> educationList;

  @override
  Widget build(BuildContext context) => UserSection(
      headingText: 'Education',
      body: ListView.separated(
        itemCount: educationList.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, position) => _buildEducationItem(position),
        separatorBuilder: (context, position) => const SizedBox(height: 8),
      ));

  Widget _buildEducationItem(int position) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '${educationList[position].yearStart} - ${educationList[position].yearEnd ?? 'Present'}',
          style: TextStyles.content.copyWith(color: ColorStyles.biscay),
        ),
        const SizedBox(width: 8),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                educationList[position].school,
                style: TextStyles.subheading,
              ),
              Text(educationList[position].degree, style: TextStyles.content),
            ],
          ),
        )
      ],
    );
  }
}
