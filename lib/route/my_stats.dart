import 'package:flutter/material.dart';
import 'package:yeshub/route/awards.dart';
import 'package:yeshub/utils/assets.dart';
import 'package:yeshub/utils/colors.dart';
import 'package:yeshub/utils/styles.dart';
import 'package:yeshub/widgets/yeshub_textbutton.dart';

class MyStatsScreen extends StatelessWidget {
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
                    'My Stats',
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
              height: height * .02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * .03,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: width * .03,
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: width * .12,
                          height: width * .12,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                profileAvatar,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width * .03,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Maqware12",
                              style: labelTextStyle.copyWith(
                                fontSize: width * .04,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Cookie Points: 880.00',
                              style: labelTextStyle.copyWith(
                                fontSize: width * .038,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * .02,
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  SizedBox(
                    height: height * .01,
                  ),
                  Container(
                    height: height * .05,
                    padding: EdgeInsets.symmetric(
                      horizontal: width * .02,
                    ),
                    child: YesHubTextButton(
                      title: "Edit",
                      callback: () {},
                    ),
                  ),
                  SizedBox(
                    height: height * .02,
                  ),
                ],
              ),
            ),
            Container(
              height: height * .01,
              width: width,
              color: greyColor,
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
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
                      child: Text(
                        'Member Stats',
                        style: labelTextStyle.copyWith(
                          fontSize: width * .04,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * .01,
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(
                      height: height * .01,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: width * .03,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Awards earned (4)",
                            style: labelTextStyle.copyWith(
                              fontSize: width * .035,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: height * .01,
                          ),
                          Center(
                            child: Wrap(
                              children: List.generate(
                                4,
                                (index) {
                                  List<String> medals = [
                                    medal1,
                                    medal2,
                                    medal3,
                                    medal4,
                                  ];
                                  return GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) => AwardListScreen(),
                                        ),
                                      );
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.all(
                                        width * .08,
                                      ),
                                      child: SizedBox(
                                        width: width * .25,
                                        height: width * .25,
                                        child: Image.asset(
                                          medals[index],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * .02,
                          ),
                          Text(
                            "Awards Given (4)",
                            style: labelTextStyle.copyWith(
                              fontSize: width * .035,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: height * .01,
                          ),
                          Center(
                            child: Wrap(
                              children: List.generate(
                                4,
                                (index) {
                                  List<String> medals = [
                                    medal1,
                                    medal2,
                                    medal3,
                                    medal4,
                                  ];
                                  return GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) => AwardListScreen(),
                                        ),
                                      );
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.all(
                                        width * .08,
                                      ),
                                      child: SizedBox(
                                        width: width * .25,
                                        height: width * .25,
                                        child: Image.asset(
                                          medals[index],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
