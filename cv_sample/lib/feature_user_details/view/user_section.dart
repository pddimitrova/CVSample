import 'package:cv_sample/util/text_styles.dart';
import 'package:flutter/material.dart';

class UserSection extends StatelessWidget {
  UserSection({
    @required this.headingText,
    @required this.body,
  });

  final String headingText;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Text(headingText, style: TextStyles.heading)),
        body,
      ],
    );
  }
}
