import 'package:flutter/material.dart';
import 'package:yeshub/utils/colors.dart';
import 'package:yeshub/utils/styles.dart';

class Characteristics extends StatelessWidget {
  List<String> titles = [
    "Open By Application",
    "Registration",
    "Workshop",
    "Global",
    "Opportunity For Funding",
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: height * .02,
          ),
          Text(
            'Characteristics',
            style: labelTextStyle.copyWith(
              fontSize: width * .04,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: height * .02,
          ),
          Wrap(
            children: List.generate(
              titles.length,
              (index) {
                return Padding(
                  padding: EdgeInsets.only(
                    bottom: height * .02,
                  ),
                  child: Row(
                    children: [
                      Text(
                        titles[index],
                        style: labelTextStyle.copyWith(
                          fontSize: width * .038,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.check_box,
                        color: greenAccentColor,
                        size: width * .05,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
