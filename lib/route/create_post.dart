import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:yeshub/utils/assets.dart';
import 'package:yeshub/utils/colors.dart';
import 'package:yeshub/utils/constants.dart';
import 'package:yeshub/utils/styles.dart';
import 'package:yeshub/widgets/yes_hub_textfield2.dart';
import 'package:yeshub/widgets/yeshub_textbutton.dart';

class CreatePostScreen extends StatefulWidget {
  @override
  _CreatePostScreenState createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen> {
  TextEditingController _titletextEditingController = TextEditingController(),
      _textEditingController = TextEditingController();

  List<String> categories = [
    'Cars & Vehicles',
    'Comedy',
    'Economics & Trade',
    'Education',
    'Entertainment',
    'Movies & Animation'
  ];

  String value = 'Cars & Vehicles';

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
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
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
                      'Create Post',
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
                Container(
                  width: width,
                  height: height * .06,
                  decoration: BoxDecoration(
                    color: greyColor,
                    borderRadius: BorderRadius.circular(
                      width * .03,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(
                      width * .02,
                    ),
                    child: DropdownButton<String>(
                      items: categories.map(
                        (String e) {
                          return DropdownMenuItem<String>(
                            child: Text(
                              e,
                              style: labelTextStyle.copyWith(
                                fontSize: width * .035,
                                color: accentColor,
                              ),
                              textScaleFactor: 1,
                            ),
                            value: e,
                          );
                        },
                      ).toList(),
                      style: hintTextStyle.copyWith(
                        fontSize: width * .035,
                        color: greyColor,
                      ),
                      underline: Container(),
                      isExpanded: true,
                      dropdownColor: greyColor,
                      value: value,
                      onChanged: (valuee) {
                        setState(() {
                          value = valuee;
                        });
                      },
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                        size: width * .06,
                        color: Colors.grey[500],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * .02,
                ),
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
                    SizedBox()
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
                YesHubTextField2(
                  textEditingController: _textEditingController,
                  hintText: "Enter text here",
                  maxLength: 5,
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
      ),
    );
  }
}
