import 'package:flutter/material.dart';
import 'package:yeshub/components/bottom_app_bar.dart';
import 'package:yeshub/components/search_header.dart';
import 'package:yeshub/utils/assets.dart';
import 'package:yeshub/utils/colors.dart';
import 'package:yeshub/utils/styles.dart';
import 'package:yeshub/widgets/timeline_post_card.dart';

import 'moderators.dart';

class JoinedCommunityScreen extends StatefulWidget {
  @override
  _JoinedCommunityScreenState createState() => _JoinedCommunityScreenState();
}

class _JoinedCommunityScreenState extends State<JoinedCommunityScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  String _currentItemSelected;

  List<String> menuList = ["Hot Posts", "Calendar View"];

  @override
  void initState() {
    super.initState();
    _currentItemSelected = menuList[0];
  }

  DateTime _selectedDay = DateTime.now(), _focusedDay;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        bottomNavigationBar: YesHubBottomBar(),
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
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * .03,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: width * .1,
                            height: width * .1,
                            child: Image.asset(
                              profilePageAvatar2,
                            ),
                          ),
                          SizedBox(
                            width: width * .02,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "COVID-19 Response",
                                style: labelTextStyle.copyWith(
                                  fontSize: width * .038,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "649,453 members",
                                style: labelTextStyle.copyWith(
                                  fontSize: width * .035,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Container(
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
                                "Joined",
                                style: labelTextStyle.copyWith(
                                  fontSize: width * .035,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * .01,
                      ),
                      Text(
                        "This community is dedicated for discussions about COVID-19, whether it's about your organization's response, health management strategies, community needs on the ground, and more.",
                        style: labelTextStyle.copyWith(
                          fontSize: width * .035,
                        ),
                      ),
                      SizedBox(
                        height: height * .01,
                      ),
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
                        tabs: [
                          Tab(
                            text: "Posts",
                          ),
                          Tab(
                            text: "About",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * .02,
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            SingleChildScrollView(
                              physics: BouncingScrollPhysics(),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: height * .05,
                                    color: greyColor,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: width * .02,
                                        ),
                                        SizedBox(
                                          width: width * .03,
                                          height: width * .03,
                                          child: Image.asset(
                                            _currentItemSelected
                                                    .toLowerCase()
                                                    .contains("hot")
                                                ? fireIcon
                                                : calendarIcon,
                                          ),
                                        ),
                                        SizedBox(
                                          width: width * .02,
                                        ),
                                        Container(
                                          width: width * .3,
                                          child: PopupMenuButton<String>(
                                            itemBuilder: (context) {
                                              return menuList.map((str) {
                                                return PopupMenuItem(
                                                  value: str,
                                                  child: Text(
                                                    str,
                                                    style:
                                                        labelTextStyle.copyWith(
                                                      fontSize: width * .032,
                                                    ),
                                                  ),
                                                );
                                              }).toList();
                                            },
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: <Widget>[
                                                Text(
                                                  _currentItemSelected,
                                                  style:
                                                      labelTextStyle.copyWith(
                                                    fontSize: width * .032,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: width * .01,
                                                ),
                                                Icon(
                                                  Icons.arrow_downward,
                                                  size: width * .04,
                                                ),
                                              ],
                                            ),
                                            onSelected: (v) {
                                              setState(() {
                                                _currentItemSelected = v;
                                              });
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  PostCard(
                                    isImageAvailable: false,
                                  ),
                                  Container(
                                    height: height * .02,
                                    width: double.infinity,
                                    color: greyColor,
                                  ),
                                  PostCard(
                                    isImageAvailable: true,
                                  ),
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              physics: BouncingScrollPhysics(),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: height * .02,
                                    width: double.infinity,
                                    color: greyColor,
                                  ),
                                  SizedBox(
                                    height: height * .01,
                                  ),
                                  Text(
                                    "Community Rules",
                                    style: headingTextStyle.copyWith(
                                      fontSize: width * .04,
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * .01,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: List.generate(
                                      4,
                                      (index) {
                                        return Padding(
                                          padding: EdgeInsets.only(
                                            bottom: height * .005,
                                          ),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    "${index + 1}. Think before you click",
                                                    style:
                                                        labelTextStyle.copyWith(
                                                      fontSize: width * .036,
                                                    ),
                                                  ),
                                                  Spacer(),
                                                  Icon(
                                                    Icons.arrow_downward,
                                                    size: width * .05,
                                                  ),
                                                ],
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
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * .02,
                                  ),
                                  Container(
                                    height: height * .02,
                                    width: double.infinity,
                                    color: greyColor,
                                  ),
                                  SizedBox(
                                    height: height * .01,
                                  ),
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
                                      3,
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
                                  SizedBox(
                                    height: height * .01,
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
                                ],
                              ),
                            ),
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
