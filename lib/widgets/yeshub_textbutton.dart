import 'package:flutter/material.dart';
import 'package:yeshub/utils/colors.dart';
import 'package:yeshub/utils/constants.dart';
import 'package:yeshub/utils/styles.dart';

class YesHubTextButton extends StatelessWidget {
  final String title;
  final VoidCallback callback;
  final Color buttonColor;
  final Color textColor;

  const YesHubTextButton({
    Key key,
    @required this.title,
    @required this.callback,
    this.buttonColor,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: Constants.kDefaultSize * 12,
      child: TextButton(
        child: Text(
          title,
          style: labelTextStyle.copyWith(
            fontWeight: FontWeight.bold,
            color: textColor ?? Colors.black,
            fontSize: Constants.kDefaultSize * 4,
          ),
          textScaleFactor: 1,
        ),
        style: ButtonStyle(
          shape: MaterialStateProperty.resolveWith(
            (states) {
              return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  Constants.kDefaultSize * 3,
                ),
              );
            },
          ),
          backgroundColor: MaterialStateProperty.resolveWith(
            (states) => buttonColor ?? primaryColor,
          ),
          overlayColor: MaterialStateProperty.resolveWith(
            (states) => Colors.black26,
          ),
        ),
        onPressed: () {
          callback();
        },
      ),
    );
  }
}
