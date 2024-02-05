import 'package:cricket/theme/const_color.dart';
import 'package:cricket/theme/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(30),
          color: Black01,
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  Get.toNamed("profile");
                },
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration:
                          BoxDecoration(shape: BoxShape.circle, color: White01),
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
                        HeadlineText3(
                          text: "Raj Avenger 16",
                          textColor: White01,
                        ),
                        HeadlineText3(
                          text: "Skill Score: 584",
                          textColor: const Color.fromARGB(255, 255, 136, 136),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeadlineText2(
                    text: "Total Balance",
                    textColor: Black01,
                  ),
                  HeadlineText1(
                    text: "₹39",
                    textColor: Black01,
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Get.toNamed("/my_balance_screen");
                },
                child: Container(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 171, 255, 115)),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  child: HeadlineText2(
                    text: "ADD CASH",
                    textColor: Black01,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                Icons.wallet_outlined,
                color: Black01,
              ),
              SizedBox(
                width: 10,
              ),
              HeadlineText2(
                text: "Transaction History",
                textColor: Black01,
              )
            ],
          ),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                Icons.countertops_outlined,
                color: Black01,
              ),
              SizedBox(
                width: 10,
              ),
              HeadlineText2(
                text: "Invite & Collect",
                textColor: Black01,
              )
            ],
          ),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                Icons.chrome_reader_mode_sharp,
                color: Black01,
              ),
              SizedBox(
                width: 10,
              ),
              HeadlineText2(
                text: "Champions Club",
                textColor: Black01,
              )
            ],
          ),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Get.toNamed("findGuru");
            },
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Black01,
                ),
                SizedBox(
                  width: 10,
                ),
                HeadlineText2(
                  text: "Find People",
                  textColor: Black01,
                )
              ],
            ),
          ),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                Icons.games_outlined,
                color: Black01,
              ),
              SizedBox(
                width: 10,
              ),
              HeadlineText2(
                text: "How To Play",
                textColor: Black01,
              )
            ],
          ),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                Icons.message_outlined,
                color: Black01,
              ),
              SizedBox(
                width: 10,
              ),
              HeadlineText2(
                text: "Contact Us",
                textColor: Black01,
              )
            ],
          ),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                Icons.logout_outlined,
                color: Black01,
              ),
              SizedBox(
                width: 10,
              ),
              HeadlineText2(
                text: "Log OUT",
                textColor: Black01,
              )
            ],
          ),
        ),
        Divider(),
        // Add more list items here as needed
      ],
    ));
  }
}
