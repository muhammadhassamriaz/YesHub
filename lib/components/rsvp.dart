import 'package:flutter/material.dart';
import 'package:yeshub/utils/styles.dart';

class RSVP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: height * .02,
        ),
        Text(
          'RSVP',
          style: labelTextStyle.copyWith(
            fontSize: width * .04,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: height * .02,
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text:
                    "Constituents may direct questions not covered in this note in English, French or Spanish to ",
                style: labelTextStyle.copyWith(
                  fontSize: width * .036,
                ),
              ),
              TextSpan(
                text: "\nGLOBALSUMMIT@ilo.org .",
                style: labelTextStyle.copyWith(
                  fontSize: width * .036,
                  color: Color(0xff1572CE),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: height * .02,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.link,
              size: width * .05,
            ),
            SizedBox(
              width: width * .03,
            ),
            Expanded(
              child: Text(
                'ILO Global Summit on COVID-19 and the World of Work - Building a better future of work',
                style: labelTextStyle.copyWith(
                  fontSize: width * .036,
                  color: Color(0xff1572CE),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
