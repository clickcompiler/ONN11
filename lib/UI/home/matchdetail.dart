import 'package:cricket/theme/const_color.dart';
import 'package:cricket/theme/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MatchDetails extends StatefulWidget {
  const MatchDetails({super.key});

  @override
  State<MatchDetails> createState() => _MatchDetailsState();
}

class _MatchDetailsState extends State<MatchDetails> {
  List<String> headScroll = ['Contests', 'My Contest(0)', 'My Teams(0)'];
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
                          onPressed: () {}, icon: Icon(Icons.wallet_sharp)),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.notifications_outlined))
                    ],
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Text(
                    "Sort By :",
                    style: TextStyle(fontSize: 13),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "ENTRY",
                    style: TextStyle(fontSize: 13),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "SPOTS",
                    style: TextStyle(fontSize: 13),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "PRIZE POOL",
                    style: TextStyle(fontSize: 13),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "%WINNERS",
                    style: TextStyle(fontSize: 13),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Spacer(),
                  Icon(
                    Icons.filter_alt_outlined,
                    color: Black01,
                  )
                ],
              ),
            ),
            Divider(),
            GameCard(),
            GameCard(),
            GameCard(),
            GameCard(),
          ],
        ),
      ),
      floatingActionButton: InkWell(
        onTap: () {
          Get.toNamed("createTeam");
        },
        child: Container(
          padding: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width - 150,
          decoration: BoxDecoration(
              color: Black01, borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.add),
              SizedBox(
                width: 10,
              ),
              HeadlineText2(text: "CREATE TEAM")
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class GameCard extends StatelessWidget {
  const GameCard({
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
                  HeadlineText3(text: "Prize Pool"),
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
                  HeadlineText1(
                    text: "₹ 3 Crores",
                    textColor: Black01,
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.green),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    child: HeadlineText2(text: "₹19"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LabelText1(
                    text: "3,09,0877 spot left",
                    textColor: Red01,
                  ),
                  LabelText1(text: "4,78,632 spots"),
                ],
              ),
            ),
            LinearPercentIndicator(
              width: MediaQuery.of(context).size.width - 20,
              lineHeight: 4.0,
              percent: 0.6,
              progressColor: Colors.red,
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
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.green),
                        color: const Color.fromARGB(255, 212, 255, 214)),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    child: Row(
                      children: [
                        Icon(
                          Icons.verified,
                          size: 15,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        LabelText1(
                          text: "Confirmed",
                          textColor: Colors.green,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
