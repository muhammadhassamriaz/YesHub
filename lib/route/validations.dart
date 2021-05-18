import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:yeshub/utils/colors.dart';
import 'package:yeshub/utils/styles.dart';
import 'package:yeshub/widgets/yes_hub_textfield2.dart';
import 'package:yeshub/widgets/yeshub_textbutton.dart';
import 'package:yeshub/widgets/yeshub_textfield.dart';

class ValidationScreen extends StatefulWidget {
  @override
  _ValidationScreenState createState() => _ValidationScreenState();
}

class _ValidationScreenState extends State<ValidationScreen> {
  TextEditingController _organizationController = TextEditingController(),
      _postitionController = TextEditingController(),
      _departmentController = TextEditingController(),
      _emailAddressController = TextEditingController(),
      _homeOfficeController = TextEditingController(),
      _homeOfficeProjectProgramController = TextEditingController(),
      _descriptionTextEditingController = TextEditingController();

  ExpandableController _expandableController = ExpandableController();

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
                    'Validation',
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
                      SizedBox(
                        height: height * .02,
                      ),
                      YesHubTextField2(
                        textEditingController: _organizationController,
                        hintText: "Organization",
                      ),
                      SizedBox(
                        height: height * .02,
                      ),
                      YesHubTextField2(
                        textEditingController: _postitionController,
                        hintText: "Position",
                      ),
                      SizedBox(
                        height: height * .02,
                      ),
                      YesHubTextField2(
                        textEditingController: _departmentController,
                        hintText: "Department/Team",
                      ),
                      SizedBox(
                        height: height * .02,
                      ),
                      YesHubTextField2(
                        textEditingController: _emailAddressController,
                        hintText: "Email Address of HR Officer or Department",
                      ),
                      SizedBox(
                        height: height * .02,
                      ),
                      YesHubTextField2(
                        textEditingController: _homeOfficeController,
                        hintText: "Home/Office Address",
                      ),
                      SizedBox(
                        height: height * .04,
                      ),
                      ExpandableNotifier(
                        child: ExpandablePanel(
                          header: Padding(
                            padding: EdgeInsets.all(0),
                            child: Text(
                              "Projects/Programs",
                              style: labelTextStyle.copyWith(
                                fontSize: width * .04,
                                color: accentColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          collapsed: SizedBox(),
                          expanded: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: height * .02,
                              ),
                              YesHubTextField2(
                                textEditingController:
                                    _homeOfficeProjectProgramController,
                                hintText: "Name of Project/Program",
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
                            ],
                          ),
                          theme: ExpandableThemeData(
                            expandIcon: Icons.arrow_forward,
                            iconColor: accentColor,
                            collapseIcon: Icons.arrow_downward,
                            iconSize: width * .05,
                          ),
                          controller: _expandableController,
                        ),
                        controller: _expandableController,
                      ),
                      SizedBox(
                        height: height * .05,
                      ),
                      YesHubTextButton(title: "Save", callback: () {}),
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
