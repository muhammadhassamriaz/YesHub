import 'package:flutter/material.dart';
import 'package:yeshub/utils/styles.dart';

class About extends StatelessWidget {
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
            'Description:',
            style: labelTextStyle.copyWith(
              fontSize: width * .04,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: height * .02,
          ),
          Text(
            'The Global Summit will provide a high-profile platform for government, employer and worker representatives, and other high-level actors, to address the economic and social impact of the COVID-19 pandemic . The summit will be an opportunity to discuss the challenges and responses of countries and regions that are still battling with the pandemic and of those are starting the recovery process. A concept note provides further details on the rationale, context and main topics for discussion and invites participants to draw on the ILO Centenary Declaration for the Future of Work in the immediate response to the pandemic and as a framework for building back better in the post-pandemic recovery.',
            style: labelTextStyle.copyWith(
              fontSize: width * .036,
            ),
          ),
        ],
      ),
    );
  }
}
