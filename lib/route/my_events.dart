import 'package:flutter/material.dart';
import 'package:yeshub/components/about.dart';
import 'package:yeshub/components/characteristics.dart';
import 'package:yeshub/components/details.dart';
import 'package:yeshub/components/rsvp.dart';
import 'package:yeshub/utils/assets.dart';
import 'package:yeshub/utils/colors.dart';
import 'package:yeshub/utils/constants.dart';
import 'package:yeshub/utils/styles.dart';

class MyEventScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Positioned(
                top: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: Constants.kDefaultSize * 80,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        pageCover,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: Constants.kDefaultSize * 10,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: Constants.kDefaultSize * 5,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              width: Constants.kDefaultSize * 8,
                              height: Constants.kDefaultSize * 8,
                              decoration: BoxDecoration(
                                color: Colors.grey[300].withAlpha(180),
                                borderRadius: BorderRadius.circular(
                                  Constants.kDefaultSize * 2,
                                ),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: width * .01,
                                  ),
                                  child: Icon(
                                    Icons.arrow_back_ios,
                                    size: Constants.kDefaultSize * 5,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              width: Constants.kDefaultSize * 8,
                              height: Constants.kDefaultSize * 8,
                              decoration: BoxDecoration(
                                color: Colors.grey[300].withAlpha(180),
                                borderRadius: BorderRadius.circular(
                                  Constants.kDefaultSize * 2,
                                ),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.share,
                                  size: Constants.kDefaultSize * 5,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: Constants.kDefaultSize * 5,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: Constants.kDefaultSize * 140,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      Constants.kDefaultSize * 6,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: Constants.kDefaultSize * 5,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: Constants.kDefaultSize * 2,
                        ),
                        Text(
                          'ILO Global Summit on COVID-19 and the World of Work - Building a better future of work',
                          style: labelTextStyle.copyWith(
                            fontSize: width * .04,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: height * .02,
                        ),
                        TabBar(
                          indicatorColor: primaryColor,
                          labelStyle: labelTextStyle.copyWith(
                            fontSize: width * .035,
                            fontWeight: FontWeight.bold,
                          ),
                          unselectedLabelStyle: labelTextStyle.copyWith(
                            fontSize: width * .035,
                            fontWeight: FontWeight.normal,
                            color: Color(0xff50646F),
                          ),
                          isScrollable: true,
                          tabs: [
                            Tab(
                              text: "About",
                            ),
                            Tab(
                              text: "Details",
                            ),
                            Tab(
                              text: "Characteristics",
                            ),
                            Tab(
                              text: "RSVP",
                            ),
                          ],
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              About(),
                              Details(),
                              Characteristics(),
                              RSVP(),
                            ],
                          ),
                        ),
                      ],
                    ),
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
