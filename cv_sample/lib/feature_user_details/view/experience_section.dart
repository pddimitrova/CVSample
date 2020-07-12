import 'package:cv_sample/data/model/user_response_model.dart';
import 'package:cv_sample/feature_user_details/view/user_section.dart';
import 'package:cv_sample/util/color_styles.dart';
import 'package:cv_sample/util/text_styles.dart';
import 'package:flutter/material.dart';

class ExperienceSection extends StatelessWidget {
  ExperienceSection({@required this.experienceList});

  final List<Experience> experienceList;

  @override
  Widget build(BuildContext context) => UserSection(
      headingText: 'Experience',
      body: ListView.separated(
        itemCount: experienceList.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, position) => _buildExperienceItem(position),
        separatorBuilder: (context, position) => const SizedBox(height: 8),
      ));

  Widget _buildExperienceItem(int position) => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '${experienceList[position].dateStart} - ${experienceList[position].dateEnd ?? 'Present'}',
            style: TextStyles.content.copyWith(color: ColorStyles.biscay),
          ),
          const SizedBox(width: 8),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  experienceList[position].company,
                  style: TextStyles.subheading,
                ),
                Text(
                    '${experienceList[position].position} • ${experienceList[position].location}',
                    style: TextStyles.content),
                Text(experienceList[position].description,
                    style: TextStyles.content),
              ],
            ),
          )
        ],
      );
}
