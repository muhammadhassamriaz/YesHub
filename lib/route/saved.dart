import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:yeshub/utils/colors.dart';
import 'package:yeshub/utils/styles.dart';
import 'package:yeshub/widgets/timeline_post_card.dart';

class SavedScreen extends StatefulWidget {
  SavedScreen({Key key}) : super(key: key);

  @override
  _SavedScreenState createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen> {
  DateTime _selectedDay = DateTime.now(), _focusedDay;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
                      'Saved',
                      style: headingTextStyle.copyWith(
                        fontSize: width * .05,
                      ),
                    ),
                    SizedBox()
                  ],
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
                tabs: [
                  Tab(
                    text: "Posts",
                  ),
                  Tab(
                    text: "Events",
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PostCard(
                        isImageAvailable: false,
                      ),
                      SizedBox(
                        height: height * .01,
                      ),
                      Container(
                        height: height * .01,
                        width: double.infinity,
                        color: greyColor,
                      ),
                      PostCard(
                        isImageAvailable: true,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
