import 'package:cricket/theme/const_color.dart';
import 'package:cricket/theme/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PlayerMap extends StatelessWidget {
  const PlayerMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            color: Black01,
            child: Column(
              children: [
                SizedBox(
                  height: 40,
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
                      ],
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: () {
                          Get.toNamed("matchResult");
                        },
                        icon: Icon(Icons.info_outline)),
                  ],
                ),
                Divider(
                  color: Colors.grey[500],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelText1(
                          text: "Players",
                          textColor: White02,
                        ),
                        LabelText1(
                          text: "0/11",
                          textColor: White01,
                        ),
                      ],
                    ),
                    Spacer(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(color: Colors.black),
                          child: LabelText1(
                            text: "EMR",
                            textColor: White02,
                          ),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        LabelText1(
                          text: "8",
                          textColor: White01,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        LabelText1(
                          text: "3",
                          textColor: White01,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255)),
                          child: LabelText1(
                            text: "DUB",
                            textColor: Black01,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        LabelText1(
                          text: "Credit Left",
                          textColor: White02,
                        ),
                        LabelText1(
                          text: "100",
                          textColor: White01,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Image.asset(
            "assets/08-Team Preview (1).png",
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
