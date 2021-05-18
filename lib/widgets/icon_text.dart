import 'package:flutter/material.dart';
import 'package:yeshub/utils/colors.dart';
import 'package:yeshub/utils/styles.dart';

class IconWithText extends StatelessWidget {
  final String icon;
  final String text;
  final VoidCallback callback;

  const IconWithText({
    Key key,
    @required this.icon,
    @required this.text,
    @required this.callback,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () {
        callback();
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: width * .04,
            height: width * .04,
            child: Image.asset(
              icon,
              color: lightAccentColor,
            ),
          ),
          SizedBox(
            width: width * .01,
          ),
          Text(
            text,
            style: labelTextStyle.copyWith(
              fontSize: width * .032,
              color: lightAccentColor,
            ),
          ),
        ],
      ),
    );
  }
}
