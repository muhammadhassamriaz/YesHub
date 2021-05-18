import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:yeshub/utils/assets.dart';
import 'package:yeshub/utils/colors.dart';
import 'package:yeshub/utils/constants.dart';
import 'package:yeshub/utils/styles.dart';
import 'package:yeshub/widgets/yes_hub_textfield2.dart';
import 'package:yeshub/widgets/yeshub_text.dart';
import 'package:yeshub/widgets/yeshub_textbutton.dart';

class CreateEventScreen2 extends StatelessWidget {
  List<String> charateristics = [
    "Open – by application",
    "Host org only",
    "Launch event",
    "Open – walk-ins",
    "Staff Only",
    "Survey",
    "By invite only",
    "Youth Only",
    "Live broadcast",
    "Global",
    "Registration",
    "Exhibition",
  ];
  TextEditingController _rsvpTextEditingController = TextEditingController();
  TextEditingController _relatedLinkTextEditingController =
      TextEditingController();
  TextEditingController _relatedTitleTextEditingCotnroller =
      TextEditingController();
  TextEditingController _subEventTitleTextEditingController =
      TextEditingController();
  TextEditingController _eventFromDateTextEditingController =
      TextEditingController();
  TextEditingController _eventToDateTextEditingController =
      TextEditingController();
  TextEditingController _eventFromTimeTextEditingController =
      TextEditingController();
  TextEditingController _eventToTimeTextEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Constants().init(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * .03,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * .03,
              ),
              Row(
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
                    'Create Event',
                    style: headingTextStyle.copyWith(
                      fontSize: width * .05,
                    ),
                  ),
                  SizedBox(),
                ],
              ),
              SizedBox(
                height: height * .03,
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      YesHubText(
                        text: "Event Characteristics",
                        color: accentColor,
                      ),
                      SizedBox(
                        height: height * .01,
                      ),
                      Container(
                        height: height * .15,
                        child: GridView.count(
                          crossAxisCount: 2,
                          childAspectRatio: height * .01,
                          children: List.generate(
                            charateristics.length,
                            (index) {
                              return Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.check_box_outline_blank,
                                    size: width * .035,
                                  ),
                                  SizedBox(
                                    width: width * .01,
                                  ),
                                  Text(
                                    charateristics[index],
                                    style: labelTextStyle.copyWith(
                                      fontSize: width * .032,
                                      color: accentColor,
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * .02,
                      ),
                      YesHubTextField2(
                        textEditingController: _rsvpTextEditingController,
                        hintText: "RSVP",
                      ),
                      SizedBox(
                        height: height * .02,
                      ),
                      YesHubTextField2(
                        textEditingController:
                            _relatedTitleTextEditingCotnroller,
                        hintText: "Related Title",
                      ),
                      SizedBox(
                        height: height * .02,
                      ),
                      YesHubTextField2(
                        textEditingController:
                            _relatedLinkTextEditingController,
                        hintText: "Related URL",
                      ),
                      SizedBox(
                        height: height * .04,
                      ),
                      YesHubText(
                        text: "Sub Event",
                        color: accentColor,
                      ),
                      SizedBox(
                        height: height * .02,
                      ),
                      YesHubTextField2(
                        textEditingController:
                            _subEventTitleTextEditingController,
                        hintText: "Title",
                      ),
                      SizedBox(
                        height: height * .02,
                      ),
                      Row(
                        children: [
                          Container(
                            width: width * .42,
                            child: YesHubTextField2(
                              textEditingController:
                                  _eventFromDateTextEditingController,
                              hintText: "Event Date From",
                            ),
                          ),
                          Spacer(),
                          Container(
                            width: width * .42,
                            child: YesHubTextField2(
                              textEditingController:
                                  _eventToDateTextEditingController,
                              hintText: "Event Date To",
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * .02,
                      ),
                      Row(
                        children: [
                          Container(
                            width: width * .42,
                            child: YesHubTextField2(
                              textEditingController:
                                  _eventFromTimeTextEditingController,
                              hintText: "Event Time From",
                            ),
                          ),
                          Spacer(),
                          Container(
                            width: width * .42,
                            child: YesHubTextField2(
                              textEditingController:
                                  _eventToTimeTextEditingController,
                              hintText: "Event Time To",
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * .02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: width * .45,
                            child: YesHubTextButton(
                              title: "Save as  Draft",
                              buttonColor: greyColor,
                              textColor: accentColor,
                              callback: () {},
                            ),
                          ),
                          Container(
                            width: width * .45,
                            child: YesHubTextButton(
                              title: "Post",
                              buttonColor: primaryColor,
                              textColor: accentColor,
                              callback: () {},
                            ),
                          ),
                        ],
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
