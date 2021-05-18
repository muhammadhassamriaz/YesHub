import 'package:flutter/material.dart';
import 'package:yeshub/utils/assets.dart';

class AwardsTable extends StatelessWidget {
  const AwardsTable({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Center(
      child: Wrap(
        children: List.generate(
          8,
          (index) {
            return GestureDetector(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.all(
                  width * .08,
                ),
                child: SizedBox(
                  width: width * .25,
                  height: width * .25,
                  child: Image.asset(
                    medal1,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
