import 'package:cricket/UI/home/drawer.dart';
import 'package:cricket/theme/const_color.dart';
import 'package:cricket/theme/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
        key: _scaffoldKey,
        drawer: DrawerScreen(),
        body: Column(
          children: [
            Container(
              color: Color(0xff1b05a8),
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: [
                        InkWell(
                            onTap: () {
                              _scaffoldKey.currentState?.openDrawer();
                            },
                            child: Icon(Icons.sort)),
                        SizedBox(
                          width: 10,
                        ),
                        HeadlineText1(text: "ONN 11"),
                        Spacer(),
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.wallet_sharp)),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.notification_add))
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                      // Set the height of the container as needed
                      height: 50,
                      child: DefaultTabController(
                          length: 3, // Number of tabs
                          child: Column(children: [
                            Container(
                              // Customize the appearance of the tab bar container
                              color: Color(0xff1b05a8),
                              child: const TabBar(
                                tabs: [
                                  Tab(text: 'Cricket'),
                                  Tab(text: 'Football'),
                                  Tab(text: 'BasketBall'),
                                ],
                              ),
                            ),
                          ]))),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(0),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            HeadlineText2(
                              text: "My Matches",
                              textColor: Black01,
                            ),
                            Row(
                              children: [
                                HeadlineText3(
                                  text: "View All",
                                  textColor: Black01,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Black01,
                                  size: 15,
                                )
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(
                                5,
                                (index) => Playcard(
                                      width: MediaQuery.of(context).size.width -
                                          100,
                                    )),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Image.asset("assets/b2.jpeg"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Image.asset("assets/b1.jpeg"),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: HeadlineText2(
                            text: "Upcoming Matches",
                            textColor: Black01,
                          ),
                        ),
                        Playcard(),
                        Playcard(),
                        Playcard()
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

class Playcard extends StatelessWidget {
  Playcard({
    super.key,
    this.width,
  });

  double? width;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Get.toNamed("matchdetail");
        },
        child: Container(
          width: width,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromARGB(255, 255, 255, 255),
                  Color.fromARGB(255, 255, 255, 255),
                  Color.fromARGB(255, 208, 255, 183),
                ],
              ),
              border: Border.all(color: Black03),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/team1.png",
                        height: 40,
                      ),
                      const HeadlineText1(
                        text: "EMR",
                        textColor: Black01,
                        fontSize: 16,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 125, 125),
                            borderRadius: BorderRadius.circular(5)),
                        child: const HeadlineText3(
                          text: "40m 50s",
                          textColor: Red01,
                          fontSize: 12,
                        ),
                      ),
                      const HeadlineText3(
                        text: "4:30 PM",
                        fontSize: 12,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const HeadlineText1(
                        text: "DUB",
                        textColor: Black01,
                        fontSize: 16,
                      ),
                      Image.asset(
                        "assets/team2.png",
                        height: 40,
                      ),
                    ],
                  )
                ],
              ),
              const Divider(),
              const Align(
                  alignment: Alignment.topLeft,
                  child: LabelText3(text: "1 Team"))
            ],
          ),
        ),
      ),
    );
  }
}
