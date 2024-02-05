import 'package:cricket/theme/const_color.dart';
import 'package:cricket/theme/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FindGuruPage extends StatelessWidget {
  const FindGuruPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            color: Black01,
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(
                        Icons.arrow_back,
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
                          text: "Find Guru",
                          textColor: White01,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.count(
              padding: EdgeInsets.all(0),
              crossAxisCount: 3,
              shrinkWrap: true,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.85,
              physics: NeverScrollableScrollPhysics(),
              children: List.generate(
                  10,
                  (index) => Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: White01,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  shape: BoxShape.circle,
                                  color: White01),
                              child: HeadlineText1(
                                text: "JD",
                                textColor: Black01,
                              ),
                            ),
                            HeadlineText1(
                              text: "Khelbuzz",
                              textColor: Black01,
                              fontSize: 15,
                            ),
                            LabelText1(text: "Skill Score : 584"),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 2),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromARGB(255, 251, 227, 140)),
                              child: Text(
                                "15 k Followers",
                                style: TextStyle(fontSize: 12),
                              ),
                            )
                          ],
                        ),
                      )),
            ),
          )
        ],
      ),
    );
  }
}
