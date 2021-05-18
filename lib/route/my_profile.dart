import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:yeshub/utils/assets.dart';
import 'package:yeshub/utils/colors.dart';
import 'package:yeshub/utils/styles.dart';
import 'package:yeshub/widgets/timeline_post_card.dart';

class MyProfileScreen extends StatefulWidget {
  @override
  _MyProfileScreenState createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  TextEditingController _searchTextEditingController = TextEditingController();

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
      length: 3,
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
                      'My Profile',
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
                    text: "All",
                  ),
                  Tab(
                    text: "Posts",
                  ),
                  Tab(
                    text: "Events",
                  ),
                ],
              ),
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
                        _currentItemSelected.toLowerCase().contains("hot")
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
                                style: labelTextStyle.copyWith(
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
                              style: labelTextStyle.copyWith(
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
              SizedBox(
                height: height * .02,
              ),
              if (_currentItemSelected.toLowerCase().contains("hot"))
                Expanded(
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                )
              else
                TableCalendar(
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay: DateTime.now(),
                  selectedDayPredicate: (day) {
                    return isSameDay(_selectedDay, day);
                  },
                  onDaySelected: (selectedDay, focusedDay) {
                    setState(() {
                      _selectedDay = selectedDay;
                      _focusedDay = focusedDay;
                    });
                  },
                  locale: "en_US",
                  calendarFormat: CalendarFormat.month,
                )
            ],
          ),
        ),
      ),
    );
  }
}
