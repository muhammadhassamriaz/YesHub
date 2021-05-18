import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:yeshub/utils/assets.dart';
import 'package:yeshub/utils/colors.dart';
import 'package:yeshub/utils/constants.dart';
import 'package:yeshub/utils/styles.dart';
import 'package:yeshub/widgets/yeshub_textbutton.dart';

class ProfilePictureScreen extends StatelessWidget {
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
                    'Profile Picture',
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
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * .03,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Choose one from here.",
                        style: labelTextStyle.copyWith(
                          fontSize: width * .04,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: height * .01,
                      ),
                      Container(
                        height: height * .43,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: greyColor,
                          borderRadius: BorderRadius.circular(
                            width * .03,
                          ),
                        ),
                        child: Wrap(
                          children: List.generate(
                            4,
                            (index) {
                              List<String> stickers = [
                                sticker1,
                                sticker2,
                                sticker3,
                                sticker4,
                              ];
                              return Padding(
                                padding: EdgeInsets.all(
                                  width * .03,
                                ),
                                child: Container(
                                  width: width * .4,
                                  height: width * .4,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(stickers[index]),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * .03,
                      ),
                      Text(
                        "Or upload your own.",
                        style: labelTextStyle.copyWith(
                          fontSize: width * .04,
                          fontWeight: FontWeight.bold,
                        ),
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
                                      'Upload Feature Image',
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
                      YesHubTextButton(
                        title: "Save",
                        callback: () {},
                      ),
                      SizedBox(
                        height: height * .02,
                      ),
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
