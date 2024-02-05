import 'package:cricket/theme/const_color.dart';
import 'package:cricket/theme/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChooseTeam extends StatelessWidget {
  const ChooseTeam({super.key});

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
                            text: "MID Vs GLA",
                            textColor: White01,
                          ),
                          HeadlineText3(
                            text: "8h 13m Left",
                            textColor: White01,
                            fontSize: 12,
                          ),
                        ],
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.info_outline)),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.grey[300],
              padding: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/bumrah.png",
                    height: 50,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LabelText1(text: "Captian"),
                      HeadlineText2(
                        text: "2X Points",
                        textColor: Black01,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    "assets/user.png",
                    height: 50,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LabelText1(text: "Vice Captian"),
                      HeadlineText2(
                        text: "1.5X Points",
                        textColor: Black01,
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: Row(
                children: [
                  HeadlineText3(
                    text: "TYPE",
                    textColor: Black01,
                  ),
                  Icon(
                    Icons.arrow_downward,
                    color: Black01,
                    size: 17,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  HeadlineText3(
                    text: "POINTS",
                    textColor: Black01,
                  ),
                  Icon(
                    Icons.arrow_downward,
                    color: Black01,
                    size: 17,
                  ),
                  Spacer(),
                  HeadlineText3(
                    text: "%C BY",
                    textColor: Black01,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  HeadlineText3(
                    text: "%VC BY",
                    textColor: Black01,
                  ),
                ],
              ),
            ),
            Divider(),
            PlayerCard2(),
            PlayerCard2(),
            PlayerCard2(),
            PlayerCard2(),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: screenWidth / 2.7,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        elevation: MaterialStateProperty.all(0),
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 52, 52, 52))),
                    onPressed: () {
                      Get.back();
                    },
                    child: Row(
                      children: [
                        Icon(Icons.visibility),
                        SizedBox(
                          width: 5,
                        ),
                        HeadlineText2(
                          text: "PREVIEW",
                          textColor: White01,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: screenWidth / 3,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        elevation: MaterialStateProperty.all(0),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green)),
                    onPressed: () {
                      Get.toNamed("playerMap");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        HeadlineText2(
                          text: "SAVE",
                          textColor: White01,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class PlayerCard2 extends StatelessWidget {
  const PlayerCard2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              "assets/user.png",
              height: 60,
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeadlineText2(
                  text: "I Turkmen",
                  textColor: Black01,
                ),
                LabelText1(text: "45 PTS"),
              ],
            ),
            Spacer(),
            Column(
              children: [
                Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Black01)),
                    child: Text(
                      "C",
                    )),
                LabelText1(
                  text: "0.34%",
                )
              ],
            ),
            SizedBox(
              width: 40,
            ),
            Column(
              children: [
                Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Black01)),
                    child: Text(
                      "VC",
                    )),
                LabelText1(
                  text: "0.34%",
                )
              ],
            ),
            SizedBox(
              width: 20,
            ),
            SizedBox(
              width: 5,
            ),
          ],
        ),
        Divider()
      ],
    );
  }
}
