import 'package:cricket/theme/const_color.dart';
import 'package:cricket/theme/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateTeam extends StatefulWidget {
  const CreateTeam({super.key});

  @override
  State<CreateTeam> createState() => _CreateTeamState();
}

class _CreateTeamState extends State<CreateTeam> {
  List<String> headScroll = ['WK(1)', 'BAT(0)', 'AR(0)', 'BOWL(0)'];
  int activeIndex = 0;

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
                  SizedBox(
                    height: 10,
                  ),
                  HeadlineText2(text: "Max 7 Player From A Team"),
                  SizedBox(
                    height: 20,
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
                      Image.asset(
                        "assets/team1.png",
                        height: 40,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          LabelText1(
                            text: "EMR",
                            textColor: White02,
                          ),
                          LabelText1(
                            text: "0",
                            textColor: White01,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          LabelText1(
                            text: "DUB",
                            textColor: White02,
                          ),
                          LabelText1(
                            text: "0",
                            textColor: White01,
                          ),
                        ],
                      ),
                      Image.asset(
                        "assets/team2.png",
                        height: 40,
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
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List.generate(
                        11,
                        (index) => Container(
                              width: 25,
                              height: 10,
                              color: index < 3 ? Colors.green : White01,
                            )),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(4),
              color: Color.fromARGB(255, 250, 218, 123),
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.file_copy,
                    size: 15,
                    color: Color.fromARGB(255, 186, 146, 28),
                  ),
                  LabelText1(
                    text: "Copy Terms Of Your Favorite Gurus",
                    textColor: Color.fromARGB(255, 106, 82, 11),
                  )
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
            Container(
              padding: EdgeInsets.all(5),
              color: Colors.grey[200],
              child: Row(
                children: [
                  HeadlineText3(
                    text: "Select 3 - 6 Batsmen",
                    textColor: Black01,
                  ),
                  Spacer(),
                  Icon(
                    Icons.filter_alt_outlined,
                    color: Black01,
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: Row(
                children: [
                  HeadlineText3(
                    text: "SELECTED BY",
                    textColor: Black01,
                  ),
                  Spacer(),
                  HeadlineText3(
                    text: "POINTS",
                    textColor: Black01,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  HeadlineText3(
                    text: "CREDIT",
                    textColor: Black01,
                  ),
                  Icon(
                    Icons.arrow_downward,
                    color: Black01,
                    size: 17,
                  )
                ],
              ),
            ),
            Divider(),
            PlayerCard1(),
            PlayerCard1(),
            PlayerCard1(),
            PlayerCard1(),
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
                      Get.toNamed("chooseTeam");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        HeadlineText2(
                          text: "Next",
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

class PlayerCard1 extends StatelessWidget {
  const PlayerCard1({
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
                LabelText1(text: "Sel by 73.38%"),
                LabelText1(
                  text: "Played last match",
                  textColor: Blue01,
                )
              ],
            ),
            Spacer(),
            Text("115"),
            SizedBox(
              width: 40,
            ),
            HeadlineText2(
              text: "7.5",
              textColor: Black01,
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle, border: Border.all(color: Red01)),
              child: Icon(
                Icons.remove,
                color: Red01,
              ),
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
