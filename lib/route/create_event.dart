import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:yeshub/route/create_event2.dart';
import 'package:yeshub/utils/assets.dart';
import 'package:yeshub/utils/colors.dart';
import 'package:yeshub/utils/constants.dart';
import 'package:yeshub/utils/styles.dart';
import 'package:yeshub/widgets/yes_hub_textfield2.dart';
import 'package:yeshub/widgets/yeshub_textbutton.dart';

class CreateEventScreen extends StatelessWidget {
  TextEditingController _titletextEditingController = TextEditingController();
  TextEditingController _eventDateFromTextEditingController =
      TextEditingController();
  TextEditingController _eventDateToTextEditingController =
      TextEditingController();
  TextEditingController _eventFromTimeTextEditingController =
      TextEditingController();
  TextEditingController _eventToTimeTextEditingController =
      TextEditingController();
  TextEditingController _addressTextEditingController = TextEditingController();
  TextEditingController _hostTextEditingController = TextEditingController();
  TextEditingController _coHostTextEditingController = TextEditingController();
  TextEditingController _countryTextEditingController = TextEditingController();
  TextEditingController _cityTextEditingController = TextEditingController();
  TextEditingController _descriptionTextEditingController =
      TextEditingController();
  TextEditingController _timezoneTextEditingController =
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
                      Icons.clear,
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
                    children: [
                      YesHubTextField2(
                        textEditingController: _titletextEditingController,
                        hintText: "An interesting title",
                      ),
                      SizedBox(
                        height: height * .02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Row(
                              children: [
                                SizedBox(
                                  width: width * .041,
                                  height: width * .043,
                                  child: Image.asset(
                                    photoIcon,
                                  ),
                                ),
                                SizedBox(
                                  width: width * .02,
                                ),
                                Text(
                                  'Upload images',
                                  style: labelTextStyle.copyWith(
                                    fontSize: width * .035,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Row(
                              children: [
                                SizedBox(
                                  width: width * .041,
                                  height: width * .043,
                                  child: Image.asset(
                                    videoIcon,
                                  ),
                                ),
                                SizedBox(
                                  width: width * .02,
                                ),
                                Text(
                                  'Feature YouTube video',
                                  style: labelTextStyle.copyWith(
                                    fontSize: width * .035,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(),
                        ],
                      ),
                      SizedBox(
                        height: height * .02,
                      ),
                      Container(
                        height: Constants.kDefaultSize * 60,
                        decoration: DottedDecoration(
                          color: Colors.grey[500],
                          borderRadius: BorderRadius.circular(
                            Constants.kDefaultSize * 4,
                          ),
                          linePosition: LinePosition.top,
                          shape: Shape.box,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(
                            0,
                          ),
                          child: Container(
                            height: Constants.kDefaultSize * 24,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: greyColor,
                              borderRadius: BorderRadius.circular(
                                Constants.kDefaultSize * 5,
                              ),
                            ),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(
                                Constants.kDefaultSize * 5,
                              ),
                              onTap: () {},
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: Constants.kDefaultSize * 20,
                                    height: Constants.kDefaultSize * 12,
                                    child: Image.asset(
                                      uploadIcon,
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * .01,
                                  ),
                                  Center(
                                    child: Text(
                                      'Upload Feature Image/Video',
                                      style: labelTextStyle.copyWith(
                                        fontSize: Constants.kDefaultSize * 3.5,
                                        color: Colors.grey[500],
                                      ),
                                      textScaleFactor: 1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
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
                                  _eventDateFromTextEditingController,
                              hintText: "Event Date From",
                            ),
                          ),
                          Spacer(),
                          Container(
                            width: width * .42,
                            child: YesHubTextField2(
                              textEditingController:
                                  _eventDateToTextEditingController,
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
                      YesHubTextField2(
                        textEditingController: _timezoneTextEditingController,
                        hintText: "Select Time Zone",
                      ),
                      SizedBox(
                        height: height * .02,
                      ),
                      YesHubTextField2(
                        textEditingController: _addressTextEditingController,
                        hintText: "Address",
                      ),
                      SizedBox(
                        height: height * .02,
                      ),
                      YesHubTextField2(
                        textEditingController: _hostTextEditingController,
                        hintText: "Host",
                      ),
                      SizedBox(
                        height: height * .02,
                      ),
                      YesHubTextField2(
                        textEditingController: _coHostTextEditingController,
                        hintText: "Co-Host",
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
                                  _countryTextEditingController,
                              hintText: "Country",
                            ),
                          ),
                          Spacer(),
                          Container(
                            width: width * .42,
                            child: YesHubTextField2(
                              textEditingController: _cityTextEditingController,
                              hintText: "City",
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * .02,
                      ),
                      YesHubTextField2(
                        textEditingController:
                            _descriptionTextEditingController,
                        hintText: "Description",
                        maxLength: 4,
                      ),
                      SizedBox(
                        height: height * .02,
                      ),
                      YesHubTextButton(
                        title: "Next",
                        callback: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => CreateEventScreen2(),
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        height: height * .02,
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
