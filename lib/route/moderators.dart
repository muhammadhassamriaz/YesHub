import 'package:flutter/material.dart';
import 'package:yeshub/utils/colors.dart';
import 'package:yeshub/utils/styles.dart';

class ModeratorsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height * .03,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * .03,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: width * .06,
                      color: accentColor,
                    ),
                  ),
                  Text(
                    'Moderator',
                    style: headingTextStyle.copyWith(
                      fontSize: width * .05,
                    ),
                  ),
                  SizedBox(),
                ],
              ),
            ),
            SizedBox(
              height: height * .03,
            ),
            Container(
              height: height * .01,
              width: width,
              color: greyColor,
            ),
            SizedBox(
              height: height * .03,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * .03,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Moderators",
                    style: headingTextStyle.copyWith(
                      fontSize: width * .04,
                    ),
                  ),
                  SizedBox(
                    height: height * .01,
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: List.generate(
                      12,
                      (index) {
                        return Padding(
                          padding: EdgeInsets.only(
                            bottom: height * .01,
                          ),
                          child: Text(
                            "somethingblabber",
                            style: labelTextStyle.copyWith(
                              fontSize: width * .036,
                              color: hintTextColor,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
