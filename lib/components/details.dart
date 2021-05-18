import 'package:flutter/material.dart';
import 'package:yeshub/utils/styles.dart';

class Details extends StatelessWidget {
  List<String> titles = [
    "Date",
    "Time",
    "Address",
    "City",
    "Country",
    "Host",
    "Co-Host",
  ];

  List<String> desciption = [
    "01 Jul 2020",
    "06:00 AM to 04:00 PM",
    "2464 Royal Ln. Mesa",
    "Geneva",
    "Switzerland",
    "International Labour Organization",
    "The Walt Disney Company",
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: height * .02,
          ),
          Text(
            'Event Details',
            style: labelTextStyle.copyWith(
              fontSize: width * .04,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: height * .02,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  titles.length,
                  (index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        bottom: height * .02,
                      ),
                      child: Text(
                        titles[index],
                        style: labelTextStyle.copyWith(
                          fontSize: width * .038,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                width: width * .1,
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                    titles.length,
                    (index) {
                      return Padding(
                        padding: EdgeInsets.only(
                          bottom: height * .02,
                        ),
                        child: Text(
                          desciption[index],
                          style: labelTextStyle.copyWith(
                            fontSize: width * .038,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
