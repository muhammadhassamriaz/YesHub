import 'package:flutter/material.dart';
import 'package:yeshub/route/journey.dart';
import 'package:yeshub/utils/assets.dart';
import 'package:yeshub/utils/colors.dart';
import 'package:yeshub/utils/styles.dart';
import 'package:yeshub/widgets/yeshub_text.dart';
import 'package:yeshub/widgets/yeshub_textbutton.dart';

class AwardListScreen extends StatefulWidget {
  @override
  _AwardListScreenState createState() => _AwardListScreenState();
}

class _AwardListScreenState extends State<AwardListScreen> {
  bool awardSelected = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
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
                          'Awards List',
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
                      if (awardSelected)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: width * .2,
                              height: width * .2,
                              child: Image.asset(
                                medal1,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Awards Points:',
                                      style: labelTextStyle.copyWith(
                                        fontSize: width * .036,
                                        color: accentColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      ' 30',
                                      style: labelTextStyle.copyWith(
                                        fontSize: width * .036,
                                        color: accentColor,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Awards Name:',
                                      style: labelTextStyle.copyWith(
                                        fontSize: width * .036,
                                        color: accentColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      ' The Social Hub Award',
                                      style: labelTextStyle.copyWith(
                                        fontSize: width * .036,
                                        color: accentColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      if (awardSelected)
                        SizedBox(
                          height: height * .01,
                        ),
                      if (awardSelected)
                        Divider(
                          thickness: 1,
                        ),
                      SizedBox(
                        height: height * .01,
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
                                if (!awardSelected)
                                  Text(
                                    'Please Select The Award You Want To Give',
                                    style: labelTextStyle.copyWith(
                                      fontSize: width * .032,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                SizedBox(
                                  height: height * .01,
                                ),
                                Center(
                                  child: Wrap(
                                    children: List.generate(
                                      8,
                                      (index) {
                                        return GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              awardSelected = !awardSelected;
                                            });
                                          },
                                          child: Padding(
                                            padding: EdgeInsets.all(
                                              width * .08,
                                            ),
                                            child: SizedBox(
                                              width: width * .25,
                                              height: width * .25,
                                              child: Image.asset(
                                                medal1,
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: height * .06,
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: height * .02,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * .04,
                ),
                child: YesHubTextButton(
                  title: "Give Award",
                  callback: () {
                    if (awardSelected) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => JourneyScreen(),
                        ),
                      );
                    }
                  },
                  buttonColor: !awardSelected ? accentColor : primaryColor,
                  textColor: !awardSelected ? Colors.white : lightAccentColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
