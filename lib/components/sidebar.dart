import 'package:flutter/material.dart';
import 'package:yeshub/route/case_study.dart';
import 'package:yeshub/route/draft.dart';
import 'package:yeshub/route/feature_stories.dart';
import 'package:yeshub/route/my_events.dart';
import 'package:yeshub/route/my_profile.dart';
import 'package:yeshub/route/my_stats.dart';
import 'package:yeshub/route/saved.dart';
import 'package:yeshub/route/settings.dart';
import 'package:yeshub/utils/assets.dart';
import 'package:yeshub/utils/colors.dart';
import 'package:yeshub/utils/constants.dart';
import 'package:yeshub/utils/styles.dart';

class Sidebar extends StatefulWidget {
  @override
  _SidebarState createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  List<String> titles = [
    "My Profile",
    "My Events",
    "Feature Events",
    "Case Study",
    "My Stats",
    "Saved",
    "Drafts",
    "Settings",
    "Logout",
  ];

  List<String> images = [
    myProfileIcon,
    myEventIcon,
    featureStoriesIcon,
    caseStudyIcon,
    myStatsIcon,
    savedIcon,
    draftsIcon,
    logoutIcon,
  ];

  int selectedIndex;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    Constants().init(context);
    return Container(
      width: width * .7,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height * .03,
            ),
            Center(
              child: SizedBox(
                width: Constants.kDefaultSize * 50,
                child: Image.asset(
                  appLogo,
                ),
              ),
            ),
            SizedBox(
              height: height * .01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: width * .13,
                  height: width * .13,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        profileAvatar,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: width * .03,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "donna.mayert",
                      style: labelTextStyle.copyWith(
                        fontSize: width * .04,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Cookie Points : 122",
                      style: labelTextStyle.copyWith(
                        fontSize: width * .035,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: height * .02,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      bottom: height * .005,
                      right: width * .15,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                        if (titles[index]
                            .toLowerCase()
                            .contains("my profile")) {
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => MyProfileScreen(),
                            ),
                          );
                        } else if (titles[index]
                            .toLowerCase()
                            .contains("saved")) {
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => SavedScreen(),
                            ),
                          );
                        } else if (titles[index]
                            .toLowerCase()
                            .contains("settings")) {
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => SettingsScreen(),
                            ),
                          );
                        } else if (titles[index]
                            .toLowerCase()
                            .contains("my events")) {
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => MyEventScreen(),
                            ),
                          );
                        } else if (titles[index]
                            .toLowerCase()
                            .contains("case")) {
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => CaseStudyScreen(),
                            ),
                          );
                        } else if (titles[index]
                            .toLowerCase()
                            .contains("feature")) {
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => FeatureStoriesScreen(),
                            ),
                          );
                        } else if (titles[index]
                            .toLowerCase()
                            .contains("stats")) {
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => MyStatsScreen(),
                            ),
                          );
                        }
                        else if (titles[index]
                            .toLowerCase()
                            .contains("draft")) {
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => DraftScreen(),
                            ),
                          );
                        }
                      },
                      child: Container(
                        width: width * .5,
                        height: height * .06,
                        decoration: selectedIndex == index
                            ? BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(
                                    width * .08,
                                  ),
                                  bottomRight: Radius.circular(
                                    width * .08,
                                  ),
                                ),
                              )
                            : BoxDecoration(),
                        child: Row(
                          children: [
                            SizedBox(
                              width: width * .08,
                            ),
                            SizedBox(
                              width: width * .05,
                              height: width * .05,
                              child: Image.asset(
                                images[index],
                              ),
                            ),
                            SizedBox(
                              width: width * .03,
                            ),
                            Text(
                              titles[index],
                              style: labelTextStyle.copyWith(
                                fontSize: width * .038,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
