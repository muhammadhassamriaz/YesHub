import 'package:flutter/material.dart';
import 'package:yeshub/utils/colors.dart';
import 'package:yeshub/utils/styles.dart';
import 'package:yeshub/widgets/yes_hub_textfield2.dart';
import 'package:yeshub/widgets/yeshub_textbutton.dart';

class AdvanceScreen extends StatefulWidget {
  @override
  _AdvanceScreenState createState() => _AdvanceScreenState();
}

class _AdvanceScreenState extends State<AdvanceScreen> {
  int selectedIndex;

  TextEditingController _cityController = TextEditingController(),
      _yearController = TextEditingController(),
      _monthController = TextEditingController(),
      _nationalityController = TextEditingController();

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
                    'Advance',
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
            Container(
              height: height * .01,
              width: width,
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
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'The following questions below will help us serve you and the community better. We commit to keeping this information safe, and in no way will your response be attributed to you in any external communications.',
                        style: labelTextStyle.copyWith(
                          fontSize: width * .032,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: height * .02,
                      ),
                      Text(
                        '1. What do you identify as?',
                        style: labelTextStyle.copyWith(
                          fontSize: width * .035,
                        ),
                      ),
                      SizedBox(
                        height: height * .02,
                      ),
                      Wrap(
                        spacing: width * .12,
                        children: List.generate(
                          3,
                          (index) {
                            List<String> options = [
                              "Man",
                              "Woman",
                              "Prefer Not To Say",
                            ];
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedIndex = index;
                                });
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    selectedIndex == index
                                        ? Icons.radio_button_checked
                                        : Icons.radio_button_unchecked_outlined,
                                    size: width * .04,
                                    color: accentColor,
                                  ),
                                  SizedBox(
                                    width: width * .02,
                                  ),
                                  Text(
                                    options[index],
                                    style: labelTextStyle.copyWith(
                                      fontSize: width * .035,
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
                      Text(
                        '2. From which city are you currently working?',
                        style: labelTextStyle.copyWith(
                          fontSize: width * .035,
                        ),
                      ),
                      SizedBox(
                        height: height * .02,
                      ),
                      YesHubTextField2(
                        textEditingController: _cityController,
                        hintText: "Enter City",
                      ),
                      SizedBox(
                        height: height * .02,
                      ),
                      Text(
                        '3. When were you born?',
                        style: labelTextStyle.copyWith(
                          fontSize: width * .035,
                        ),
                      ),
                      SizedBox(
                        height: height * .02,
                      ),
                      YesHubTextField2(
                        textEditingController: _yearController,
                        hintText: "Year",
                      ),
                      SizedBox(
                        height: height * .02,
                      ),
                      YesHubTextField2(
                        textEditingController: _monthController,
                        hintText: "Month",
                      ),
                      SizedBox(
                        height: height * .02,
                      ),
                      Text(
                        '4. What is your nationality?',
                        style: labelTextStyle.copyWith(
                          fontSize: width * .035,
                        ),
                      ),
                      SizedBox(
                        height: height * .02,
                      ),
                      YesHubTextField2(
                        textEditingController: _nationalityController,
                        hintText: "Nationality",
                      ),
                      SizedBox(
                        height: height * .02,
                      ),
                      YesHubTextButton(title: "Save", callback: () {}),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
