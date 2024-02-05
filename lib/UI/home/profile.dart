import 'package:cricket/theme/const_color.dart';
import 'package:cricket/theme/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            color: Color(0xff1b05a8),
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
                        HeadlineText2(
                          text: "Raj Avengers 16",
                          textColor: White01,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                          decoration: BoxDecoration(
                              color: White01,
                              borderRadius: BorderRadius.circular(10)),
                          child: HeadlineText3(
                            text: "Skill Score:584",
                            fontSize: 12,
                            textColor: Colors.brown,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.share)
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xff1b05a8),
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: White01),
                        child: HeadlineText1(
                          text: "JD",
                          textColor: Black01,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          HeadlineText1(
                            text: "Raj Avenger ",
                            textColor: White01,
                          ),
                          HeadlineText3(
                            text: "2 Followers    4 Followings",
                            textColor: Color.fromARGB(255, 249, 249, 249),
                          ),
                        ],
                      )
                    ],
                  ),
                  Divider(),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          HeadlineText1(
                            text: "Raj Avenger ",
                            textColor: White01,
                          ),
                          HeadlineText3(
                            text: "Level 2",
                            textColor: Color.fromARGB(255, 249, 249, 249),
                          ),
                        ],
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          Get.toNamed("edit");
                        },
                        child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(color: Colors.green[200]),
                            child: Text("Edit")),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeadlineText1(
                  text: "Playing History",
                  textColor: Black01,
                ),
                Card(
                  child: Container(
                    color: White01,
                    padding: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              decoration: BoxDecoration(),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  LabelText1(text: "Contests"),
                                  LabelText1(
                                    text: "239",
                                    fontSize: 15,
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                LabelText1(text: "Matches"),
                                LabelText1(
                                  text: "167",
                                  fontSize: 15,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Divider(),
                        Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              decoration: BoxDecoration(),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  LabelText1(text: "Series"),
                                  LabelText1(
                                    text: "51",
                                    fontSize: 15,
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                LabelText1(text: "Sports"),
                                LabelText1(
                                  text: "167",
                                  fontSize: 15,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    color: White01,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Play for Rs. 0 More",
                                style: TextStyle(color: Colors.red),
                              ),
                              Text("&"),
                              Text(
                                "Join 1 More Contests",
                                style: TextStyle(color: Colors.red),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Container(
                              color: Red01,
                              width: MediaQuery.of(context).size.width / 2 - 30,
                              height: 2,
                            ),
                            Container(
                              color: Grey01,
                              width: MediaQuery.of(context).size.width / 2,
                              height: 2,
                            )
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.all(3),
                          color: Colors.brown[100],
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Level"),
                                  Text("0"),
                                ],
                              ),
                              Text("To Advance to level 1"),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text("Level"),
                                  Text("1"),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
