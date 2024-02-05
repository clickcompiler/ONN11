import 'package:cricket/theme/const_color.dart';
import 'package:cricket/theme/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DreamTeam extends StatelessWidget {
  const DreamTeam({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(12),
              color: Black01,
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(
                          Icons.close,
                          color: White01,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          HeadlineText3(
                            text: "MID Vs GLA",
                            textColor: White01,
                          ),
                          HeadlineText1(
                            text: "846.5 points",
                            textColor: White01,
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border.all(color: White01),
                            shape: BoxShape.circle),
                        child: HeadlineText2(
                          text: "PTS",
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Image.asset(
              "assets/13-Dream Team (1).png",
              fit: BoxFit.cover,
            )
          ],
        ),
      ),
    );
  }
}
