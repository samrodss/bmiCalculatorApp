import 'package:flutter/material.dart';
import '../constants.dart';

class GenderIcons extends StatelessWidget {
  final IconData genderIcon;
  final String genderText;

  const GenderIcons({
    required this.genderIcon,
    required this.genderText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          genderIcon,
          color: kLabelTextStyle.color,
          size: 64.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Center(
          child: Text(genderText, style: kLabelTextStyle),
        ),
      ],
    );
  }
}
