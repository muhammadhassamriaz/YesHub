import 'package:flutter/material.dart';
import 'package:yeshub/utils/assets.dart';
import 'package:yeshub/utils/colors.dart';
import 'package:yeshub/utils/constants.dart';
import 'package:yeshub/utils/styles.dart';

class CaseStudyScreen extends StatefulWidget {
  @override
  _CaseStudyScreenState createState() => _CaseStudyScreenState();
}

class _CaseStudyScreenState extends State<CaseStudyScreen> {
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
    Constants().init(context);
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
                    'Case Study',
                    style: headingTextStyle.copyWith(
                      fontSize: width * .05,
                    ),
                  ),
                  Container(
                    width: width * .09,
                    height: width * .09,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.search,
                      size: width * .06,
                      color: accentColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * .02,
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
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Wrap(
                      children: List.generate(
                        6,
                        (index) {
                          return Padding(
                            padding: EdgeInsets.only(
                              top: height * .02,
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: width * .03,
                                  ),
                                  child: SizedBox(
                                    height: height * .2,
                                    width: width,
                                    child: Image.asset(
                                      caseStudyCover,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: height * .02,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: width * .03,
                                  ),
                                  child: Text(
                                    'A Success Story: Youth Employment Project with Fashion Designer Johanna Ortiz',
                                    style: labelTextStyle.copyWith(
                                      fontSize: width * .04,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: height * .02,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: width * .03,
                                  ),
                                  child: Text(
                                    'Then Thi Cham, age 41, has just taken out a \$50 USD loan from her community savings and loan group. She used the loan to buy a pregnant goat, with the aim of selling the two baby goats to generate further',
                                    style: labelTextStyle.copyWith(
                                      fontSize: width * .036,
                                    ),
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
                              ],
                            ),
                          );
                        },
                      ),
                    ),
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
