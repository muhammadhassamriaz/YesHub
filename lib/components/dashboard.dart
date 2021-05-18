import 'package:flutter/material.dart';
import 'package:yeshub/utils/colors.dart';
import 'package:yeshub/utils/styles.dart';

class DashboardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: height * .05,
            width: width,
            decoration: BoxDecoration(
              color: accentColor,
              borderRadius: BorderRadius.circular(
                width * .01,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * .03,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Action',
                      style: labelTextStyle.copyWith(
                        fontSize: width * .035,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    'Points',
                    style: labelTextStyle.copyWith(
                      fontSize: width * .035,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: height * .03,
          ),
          Row(
            children: [
              SizedBox(
                width: width * .02,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                    5,
                    (index) {
                      List<String> titles = [
                        "Verify your email id",
                        "Update your user profile",
                        "Join 3 communities",
                        "Create your first post",
                        "Gain 10 upvotes",
                      ];
                      return Padding(
                        padding: EdgeInsets.only(
                          bottom: height * .02,
                        ),
                        child: Text(
                          titles[index],
                          style: labelTextStyle.copyWith(
                            fontSize: width * .035,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  5,
                  (index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        bottom: height * .02,
                      ),
                      child: Text(
                        "20",
                        style: labelTextStyle.copyWith(
                          fontSize: width * .035,
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                width: width * .02,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
