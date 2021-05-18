import 'package:flutter/material.dart';
import 'package:yeshub/utils/assets.dart';
import 'package:yeshub/utils/colors.dart';
import 'package:yeshub/utils/styles.dart';

class SearchHeader extends StatelessWidget {
  TextEditingController _searchTextEditingController = TextEditingController();
  final VoidCallback callback;

  SearchHeader({Key key, @required this.callback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width * .02,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              callback();
            },
            child: 
            Container(
              width: width * .1,
              height: width * .1,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    profileAvatar,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            width: width * .80,
            height: height * .05,
            decoration: BoxDecoration(
              color: greyColor,
              borderRadius: BorderRadius.circular(
                width * .08,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                left: width * .03,
                bottom: width * .02,
              ),
              child: MediaQuery(
                data: MediaQuery.of(context).copyWith(
                  textScaleFactor: 1,
                ),
                child: TextField(
                  controller: _searchTextEditingController,
                  decoration: InputDecoration(
                    hintStyle: labelTextStyle.copyWith(
                      fontSize: width * .035,
                      color: hintTextColor,
                    ),
                    hintText: "Search",
                    border: InputBorder.none,
                    suffixIcon: SizedBox(
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: width * .02,
                        ),
                        child: Icon(
                          Icons.search,
                          color: hintTextColor,
                          size: width * .05,
                        ),
                      ),
                    ),
                    labelStyle: labelTextStyle.copyWith(
                      fontSize: width * .035,
                    ),
                  ),
                ),
              ),
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
          ),
        ],
      ),
    );
  }
}
