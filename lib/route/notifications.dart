import 'package:flutter/material.dart';
import 'package:yeshub/utils/assets.dart';
import 'package:yeshub/utils/colors.dart';
import 'package:yeshub/utils/styles.dart';
import 'package:yeshub/widgets/yeshub_textbutton.dart';

class NotificationScreen extends StatelessWidget {
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
              height: height * .02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * .03,
              ),
              child: Row(
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
                  SizedBox(
                    width: width * .02,
                  ),
                  Text(
                    'Notifications',
                    style: headingTextStyle.copyWith(
                      fontSize: width * .05,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * .02,
            ),
            Container(
              height: height * .01,
              width: width,
              color: greyColor,
            ),
            SizedBox(
              height: height * .02,
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * .03,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                        runSpacing: width * .02,
                        children: List.generate(
                          13,
                          (index) {
                            return Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: width * .15,
                                  height: width * .15,
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: SizedBox(
                                          width: width * .14,
                                          height: width * .14,
                                          child: Image.asset(
                                            profilePageAvatar2,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        right: 0,
                                        child: SizedBox(
                                          width: width * .07,
                                          height: width * .07,
                                          child: Image.asset(
                                            trendingCircularIcon,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: width * .01,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: height * .01,
                                    ),
                                    Text(
                                      "Trending on COVID-19 Response",
                                      style: labelTextStyle.copyWith(
                                        fontSize: width * .036,
                                        color: accentColor,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      "Lorem ipsum dolor sit amet, consec adip",
                                      style: labelTextStyle.copyWith(
                                        fontSize: width * .035,
                                        color: accentColor,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                GestureDetector(
                                  onTap: () {
                                    showModalBottomSheet(
                                      context: context,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(
                                            width * .02,
                                          ),
                                          topRight: Radius.circular(
                                            width * .02,
                                          ),
                                        ),
                                      ),
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      builder: (context) {
                                        return Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            SizedBox(
                                              height: height * .02,
                                            ),
                                            Container(
                                              height: height * .006,
                                              width: width * .1,
                                              decoration: BoxDecoration(
                                                color: Colors.grey[500],
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  width * .02,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: height * .02,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: width * .06,
                                              ),
                                              child: Wrap(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .notifications_off_outlined,
                                                        size: width * .06,
                                                      ),
                                                      SizedBox(
                                                        width: width * .02,
                                                      ),
                                                      Text(
                                                        'Turn off this notification type',
                                                        style: labelTextStyle
                                                            .copyWith(
                                                          fontSize:
                                                              width * .037,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: height * .04,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.close_outlined,
                                                        size: width * .06,
                                                      ),
                                                      SizedBox(
                                                        width: width * .02,
                                                      ),
                                                      Text(
                                                        'Disable updates from this community',
                                                        style: labelTextStyle
                                                            .copyWith(
                                                          fontSize:
                                                              width * .037,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: height * .04,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .visibility_off_outlined,
                                                        size: width * .06,
                                                      ),
                                                      SizedBox(
                                                        width: width * .02,
                                                      ),
                                                      Text(
                                                        'Hide this notification',
                                                        style: labelTextStyle
                                                            .copyWith(
                                                          fontSize:
                                                              width * .037,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: height * .04,
                                                  ),
                                                  YesHubTextButton(
                                                    title: "Close",
                                                    callback: () {},
                                                  ),
                                                  SizedBox(
                                                    height: height * .04,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                  child: Icon(
                                    Icons.more_vert,
                                    size: width * .05,
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: height * .02,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
