import 'package:flutter/material.dart';
import 'package:yeshub/components/achievements.dart';
import 'package:yeshub/components/awards_table.dart';
import 'package:yeshub/components/dashboard.dart';
import 'package:yeshub/components/point_system.dart';
import 'package:yeshub/utils/colors.dart';
import 'package:yeshub/utils/styles.dart';

class JourneyScreen extends StatefulWidget {
  @override
  _JourneyScreenState createState() => _JourneyScreenState();
}

class _JourneyScreenState extends State<JourneyScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
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
                      'My Journey',
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
                child: Text(
                  'Point & Award System',
                  style: headingTextStyle.copyWith(
                    fontSize: width * .04,
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
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * .03,
                  ),
                  child: Column(
                    children: [
                      TabBar(
                        indicatorColor: primaryColor,
                        labelStyle: labelTextStyle.copyWith(
                          fontSize: width * .035,
                          fontWeight: FontWeight.bold,
                        ),
                        indicatorSize: TabBarIndicatorSize.label,
                        unselectedLabelStyle: labelTextStyle.copyWith(
                          fontSize: width * .035,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff50646F),
                        ),
                        isScrollable: true,
                        tabs: [
                          Tab(
                            text: "Dashboard",
                          ),
                          Tab(
                            text: "Achievements",
                          ),
                          Tab(
                            text: "Point System",
                          ),
                          Tab(
                            text: "Awards",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * .02,
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            DashboardTable(),
                            AchievementsTable(),
                            PointSystemTable(),
                            AwardsTable(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
