import 'package:cricket/theme/const_color.dart';
import 'package:cricket/theme/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MatchResult extends StatefulWidget {
  const MatchResult({super.key});

  @override
  State<MatchResult> createState() => _MatchResultState();
}

class _MatchResultState extends State<MatchResult> {
  List<String> headScroll = [
    'My Contests (1)',
    'My Teams(1)',
    'Scorecard',
    'Stats'
  ];
  int activeIndex = 0;

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
                          text: "Completed",
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
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/team1.png",
                      height: 40,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelText1(
                          text: "EMR",
                          textColor: White02,
                        ),
                        LabelText1(
                          text: "220/4 (15.6)",
                          textColor: White01,
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        LabelText1(
                          text: "DUB",
                          textColor: White02,
                        ),
                        LabelText1(
                          text: "216/4 (20)",
                          textColor: White01,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Image.asset(
                      "assets/team2.png",
                      height: 40,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                HeadlineText3(
                  text: "EMR Beats DUB By 6 Wickets",
                  textColor: White01,
                ),
              ],
            ),
          ),
          Row(
            children: List.generate(
                headScroll.length,
                (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            activeIndex = index;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              "${headScroll[index]}",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: activeIndex == index
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                  color: activeIndex == index
                                      ? Colors.blue
                                      : Colors.black),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            activeIndex == index
                                ? Container(
                                    width: 80,
                                    color: Colors.blue,
                                    height: 3,
                                  )
                                : Container()
                          ],
                        ),
                      ),
                    )),
          ),
          if (activeIndex == 0)
            Column(
              children: [GameCard2()],
            ),
          if (activeIndex == 1)
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    "assets/scoreCard.png",
                    fit: BoxFit.contain,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    "assets/scoreCard.png",
                    fit: BoxFit.contain,
                  ),
                )
              ],
            ),
          if (activeIndex == 3)
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HeadlineText3(
                        text: "PLAYERS",
                        textColor: Black01,
                      ),
                      Row(
                        children: [
                          HeadlineText3(
                            text: "POINTS",
                            textColor: Black01,
                          ),
                          Icon(
                            Icons.arrow_downward,
                            color: Black01,
                            size: 17,
                          ),
                        ],
                      ),
                      HeadlineText3(
                        text: "% SEL",
                        textColor: Black01,
                      ),
                      HeadlineText3(
                        text: "%C",
                        textColor: Black01,
                      ),
                      HeadlineText3(
                        text: "%VC",
                        textColor: Black01,
                      ),
                    ],
                  ),
                ),
                PlayerCard3(),
                PlayerCard3(),
                PlayerCard3(),
                PlayerCard3(),
                PlayerCard3(),
              ],
            ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: InkWell(
        onTap: () {
          Get.toNamed("dreamTeam");
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 6),
            color: Colors.deepPurpleAccent,
            child: HeadlineText1(text: "Dream Team")),
      ),
    );
  }
}

class PlayerCard3 extends StatelessWidget {
  const PlayerCard3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/user.png",
                  height: 30,
                ),
                SizedBox(
                  width: 3,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeadlineText2(
                      text: "I Turkmen",
                      textColor: Black01,
                      fontSize: 12,
                    ),
                    LabelText1(text: "GUJ_BAT"),
                  ],
                ),
              ],
            ),
            HeadlineText2(
              text: "134",
              textColor: Black01,
              fontSize: 12,
            ),
            HeadlineText2(
              text: "64.34%",
              textColor: Black01,
              fontSize: 12,
            ),
            HeadlineText2(
              text: "0.26%",
              textColor: Black01,
              fontSize: 12,
            ),
            HeadlineText2(
              text: "0.26%",
              textColor: Black01,
              fontSize: 12,
            ),
          ],
        ),
        Divider()
      ],
    );
  }
}

class GameCard2 extends StatelessWidget {
  const GameCard2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  HeadlineText3(text: "Rs. 100,000,000"),
                  Spacer(),
                  HeadlineText3(text: "Entry :"),
                  HeadlineText3(
                    text: "₹39",
                    textColor: Red01,
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LabelText1(text: "Prize Pool"),
                      HeadlineText2(
                        text: "₹ 10 Crores",
                        textColor: Black01,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      LabelText1(text: "Spot"),
                      HeadlineText2(
                        text: "40,38,109",
                        textColor: Black01,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      LabelText1(text: "Entry"),
                      HeadlineText2(
                        text: "Rs 33",
                        textColor: Black01,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              color: const Color.fromARGB(255, 232, 232, 232),
              child: Row(
                children: [
                  Icon(
                    Icons.emoji_events_outlined,
                    color: Black01,
                    size: 20,
                  ),
                  LabelText1(text: "₹ 7 Lakhs"),
                  SizedBox(
                    width: 10,
                  ),
                  LabelText1(text: "6 Entries"),
                  Spacer(),
                  LabelText1(text: "Guaranteed"),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              color: Color.fromARGB(255, 233, 255, 230),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LabelText1(text: "Raj Avengers 16"),
                      LabelText1(
                        text: "You won Rs33",
                        textColor: Colors.green,
                      ),
                    ],
                  ),
                  LabelText1(text: "812.5"),
                  LabelText1(text: "#5,25,854"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
