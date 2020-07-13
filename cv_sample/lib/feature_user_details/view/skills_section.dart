import 'package:cv_sample/feature_user_details/view/user_section.dart';
import 'package:cv_sample/util/color_styles.dart';
import 'package:cv_sample/util/text_styles.dart';
import 'package:flutter/material.dart';

class SkillSection extends StatelessWidget {
  SkillSection({
    this.techSkills,
    this.softSkills,
  });

  final List<String> techSkills;
  final List<String> softSkills;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Flexible(
          flex: 1,
          child: UserSection(
            headingText: 'Tech Skills',
            body: _SkillList(techSkills),
          ),
        ),
        Flexible(
          flex: 1,
          child: UserSection(
            headingText: 'Soft Skills',
            body: _SkillList(softSkills),
          ),
        ),
      ],
    );
  }
}

class _SkillList extends StatelessWidget {
  _SkillList(this.skills);

  final List<String> skills;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(0),
      itemCount: skills.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, position) => Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(' • ',
              style: TextStyles.subheading.copyWith(color: ColorStyles.biscay)),
          Flexible(child: Text(skills[position], style: TextStyles.content)),
        ],
      ),
    );
  }
}
