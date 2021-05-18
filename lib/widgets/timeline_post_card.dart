import 'package:flutter/material.dart';
import 'package:yeshub/utils/assets.dart';
import 'package:yeshub/utils/colors.dart';
import 'package:yeshub/utils/styles.dart';

import 'icon_text.dart';

class PostCard extends StatelessWidget {
  final bool isImageAvailable;

  const PostCard({
    Key key,
    @required this.isImageAvailable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width * .03,
      ),
      child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height * .02,
            ),
            Row(
              children: [
                Container(
                  height: width * .08,
                  width: width * .08,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        profilePageAvatar,
                      ),
                      fit: BoxFit.cover,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: width * .02,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'COVID-19 Response',
                      style: labelTextStyle.copyWith(
                        fontSize: width * .035,
                        fontWeight: FontWeight.bold,
                        color: accentColor,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'posted by walmartworking',
                          style: labelTextStyle.copyWith(
                            fontSize: width * .03,
                            color: lightAccentColor,
                          ),
                        ),
                        SizedBox(
                          width: width * .01,
                        ),
                        Text(
                          '• 3 days ago',
                          style: labelTextStyle.copyWith(
                            fontSize: width * .03,
                            color: lightAccentColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Icon(
                  Icons.more_vert,
                  size: width * .04,
                  color: accentColor,
                ),
              ],
            ),
            SizedBox(
              height: height * .01,
            ),
            Text(
              'How to design a product that can grow itself 10x in year:',
              style: subheadingTextStyle.copyWith(
                fontSize: width * .04,
                color: accentColor,
              ),
            ),
            SizedBox(
              height: height * .01,
            ),
            if (isImageAvailable)
              Container(
                height: height * .3,
                width: double.infinity,
                child: Image.asset(
                  postImage,
                  fit: BoxFit.cover,
                ),
              ),
            SizedBox(
              height: height * .02,
            ),
            Text(
              'Lorem ipsum dolor sit amet, consec adipisci ng elit, sed do eiusmod tempor incididunt ut abore et dolore ',
              style: labelTextStyle.copyWith(
                fontSize: width * .036,
                color: accentColor,
              ),
            ),
            SizedBox(
              height: height * .02,
            ),
            Row(
              children: [
                IconWithText(
                  icon: likeIcon,
                  text: "33",
                  callback: () {},
                ),
                Spacer(),
                IconWithText(
                  icon: messageIcon,
                  text: "12",
                  callback: () {},
                ),
                Spacer(),
                IconWithText(
                  icon: shareIcon,
                  text: "Share",
                  callback: () {},
                ),
                Spacer(),
                IconWithText(
                  icon: awardIcon,
                  text: "Award",
                  callback: () {},
                ),
                SizedBox(
                  width: width * .03,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
