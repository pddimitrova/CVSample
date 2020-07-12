import 'package:cv_sample/feature_user_details/view/user_section.dart';
import 'package:cv_sample/util/color_styles.dart';
import 'package:cv_sample/util/text_styles.dart';
import 'package:flutter/material.dart';

class ContactInfoSection extends StatelessWidget {
  ContactInfoSection({
    @required this.phoneNumber,
    @required this.email,
    @required this.linkedInUrl,
  });

  final String phoneNumber;
  final String email;
  final String linkedInUrl;

  @override
  Widget build(BuildContext context) {
    return UserSection(
        headingText: 'Contact Info',
        body: Column(
          children: <Widget>[
            _buildInfoLine('Phone Number:', phoneNumber),
            _buildInfoLine('Email:', email),
            _buildInfoLine('LinkedIn', linkedInUrl),
          ],
        ));
  }

  Widget _buildInfoLine(String key, String value) => Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(flex: 1, child: Text(key, style: TextStyles.subheading)),
            const SizedBox(width: 8),
            Expanded(
              flex: 1,
              child: Text(
                value,
                style: TextStyles.content.copyWith(color: ColorStyles.biscay),
              ),
            ),
          ],
        ),
      );
}
