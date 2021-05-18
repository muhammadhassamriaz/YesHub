import 'package:flutter/material.dart';
import 'package:yeshub/utils/colors.dart';
import 'package:yeshub/utils/styles.dart';

class YesHubText extends StatelessWidget {
  final String text;
  final Color color;
  final TextStyle textStyle;

  YesHubText({
    Key key,
    @required this.text,
    this.color,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Text(
      text.toUpperCase(),
      style: textStyle ??
          titleTextStyle.copyWith(
            color: color ?? primaryColor,
            fontSize: width * .032,
          ),
      textScaleFactor: 1,
    );
  }
}
