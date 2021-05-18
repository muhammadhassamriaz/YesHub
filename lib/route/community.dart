import 'package:flutter/material.dart';
import 'package:yeshub/components/bottom_app_bar.dart';
import 'package:yeshub/components/search_header.dart';
import 'package:yeshub/components/sidebar.dart';
import 'package:yeshub/route/joined_community.dart';
import 'package:yeshub/utils/assets.dart';
import 'package:yeshub/utils/colors.dart';
import 'package:yeshub/utils/styles.dart';

import 'moderators.dart';

class CommunityScreen extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _scaffoldKey,
      drawer: Sidebar(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height * .02,
            ),
            SearchHeader(
              callback: () {
                _scaffoldKey.currentState.openDrawer();
              },
            ),
            SizedBox(
              height: height * .02,
            ),
            Container(
              width: width,
              height: height * .01,
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
                  Text(
                    'Today Top growing communities',
                    style: labelTextStyle.copyWith(
                      fontSize: width * .04,
                    ),
                  ),
                  SizedBox(
                    height: height * .02,
                  ),
                  Wrap(
                    children: List.generate(
                      4,
                      (index) {
                        return Padding(
                          padding: EdgeInsets.only(
                            bottom: height * .015,
                          ),
                          child: Row(
                            children: [
                              Text(
                                '${index + 1}',
                                style: labelTextStyle.copyWith(
                                  fontSize: width * .04,
                                ),
                              ),
                              SizedBox(
                                width: width * .02,
                              ),
                              SizedBox(
                                width: width * .08,
                                height: width * .08,
                                child: Image.asset(
                                  profilePageAvatar,
                                ),
                              ),
                              SizedBox(
                                width: width * .02,
                              ),
                              Text(
                                'Covid 19 - Response',
                                style: labelTextStyle.copyWith(
                                  fontSize: width * .04,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => JoinedCommunityScreen(),
                                    ),
                                  );
                                },
                                child: Container(
                                  width: width * .16,
                                  height: height * .03,
                                  decoration: BoxDecoration(
                                    color: primaryColor,
                                    borderRadius: BorderRadius.circular(
                                      width * .03,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Join",
                                      style: labelTextStyle.copyWith(
                                        fontSize: width * .035,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: height * .02,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ModeratorsScreen(),
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        Text(
                          "View All Moderators",
                          style: labelTextStyle.copyWith(
                            fontSize: width * .038,
                            color: Colors.blue,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward,
                          size: width * .05,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * .02,
                  ),
                  Text(
                    "Communities that you have joined",
                    style: labelTextStyle.copyWith(
                      fontSize: width * .038,
                    ),
                  ),
                  SizedBox(
                    height: height * .02,
                  ),
                  Wrap(
                      children: List.generate(3, (index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        bottom: height * .01,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: width * .08,
                            height: width * .08,
                            child: Image.asset(
                              profilePageAvatar,
                            ),
                          ),
                          SizedBox(
                            width: width * .02,
                          ),
                          Text(
                            'Covid 19 - Response',
                            style: labelTextStyle.copyWith(
                              fontSize: width * .036,
                            ),
                          ),
                        ],
                      ),
                    );
                  })),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
