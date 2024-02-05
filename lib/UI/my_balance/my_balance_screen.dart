import 'package:cricket/theme/const_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../theme/text.dart';

class MyBalanceScreen extends StatelessWidget {
  const MyBalanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 247, 255),
      body: ListView(padding: EdgeInsets.all(0), children: [
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
                        text: "My Balance",
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
          padding: const EdgeInsets.all(18.0),
          child: Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 24, 82, 255),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LabelText1(
                        text: "Total Balance",
                        textColor: White01,
                      ),
                      HeadlineText1(text: "Rs 100")
                    ],
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          elevation: MaterialStateProperty.all(0),
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 170, 255, 173))),
                      child: Text(
                        "Add Cash",
                        style: TextStyle(
                            color: Black01, fontWeight: FontWeight.bold),
                      ))
                ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
              padding: const EdgeInsets.all(18.0),
              decoration: BoxDecoration(
                  color: White01, borderRadius: BorderRadius.circular(10)),
              child: Column(children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text("Total Balance"), Text("Rs 100")],
                    ),
                    Spacer(),
                    Icon(
                      Icons.info_outline,
                      color: Black01,
                    )
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text("Insatant Cash"), Text("Rs 309")],
                    ),
                    Spacer(),
                    Icon(
                      Icons.info_outline,
                      color: Black01,
                    )
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text("Winnings"), Text("Rs 300")],
                    ),
                    Spacer(),
                    Icon(
                      Icons.info_outline,
                      color: Black01,
                    )
                  ],
                ),
                SizedBox(height: 20),
                ElevatedButton(onPressed: () {}, child: Text("VERIFY NOW")),
                SizedBox(height: 20),
                LabelText1(
                  text:
                      "Verify your payment Account Number (PAN) card details to be eligible to withdraw",
                  maxLines: 2,
                  textColor: Colors.brown,
                  textAlign: TextAlign.center,
                ),
                Divider(),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text("Bonous"), Text("Rs 100")],
                    ),
                    Spacer(),
                    Icon(
                      Icons.info_outline,
                      color: Black01,
                    )
                  ],
                ),
                SizedBox(height: 20),
              ])),
        ),
        tabs(
          name: "Update Bank Details",
        ),
        tabs(
          name: "TDS DashBoard",
        ),
        tabs(
          name: "My Recent Transactions",
        ),
        tabs(
          name: "Gift Sent to Gurus",
        ),
        tabs(
          name: "My Recent Deposits",
        ),
        tabs(
          name: "My Recent Withdrawals",
        ),
      ]),
    );
  }
}

class tabs extends StatelessWidget {
  tabs({super.key, this.name});
  String? name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 5),
      child: Container(
        padding: const EdgeInsets.all(18.0),
        decoration: BoxDecoration(
            color: White01, borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            HeadlineText3(text: "$name"),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Black01,
            )
          ],
        ),
      ),
    );
  }
}
