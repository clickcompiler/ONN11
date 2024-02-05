import 'package:cricket/theme/const_color.dart';
import 'package:cricket/theme/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomLeft,
              colors: [Color(0xff0b587a), Color(0xff1a0d23), Color(0xff1a0d23)],
            )),
          ),
          Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Image.asset(
                "assets/logo.png",
                height: 200,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  padding: const EdgeInsets.all(18.0),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Color(0xff0b0437)),
                  child: Column(
                    children: [
                      HeadlineText1(text: "Login/Register"),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            hintText: "Enter Mobile Number",
                            prefixIcon: Icon(
                              Icons.phone,
                              color: Colors.black,
                            )),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: HeadlineText2(
                          text: "Have an Invite Code?",
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Checkbox(value: true, onChanged: (v) {}),
                          LabelText1(
                            text: "I confirm that i am 18+ in age.",
                            textColor: White01,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: screenWidth,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              elevation: MaterialStateProperty.all(0),
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xffcaf180))),
                          onPressed: () {
                            Get.toNamed("verfyOtp");
                          },
                          child: HeadlineText2(
                            text: "Continue",
                            textColor: Black01,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Red01),
                            child: LabelText1(
                              text: "18",
                              textColor: White01,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                      text:
                                          'By continuing you accept you are 18 + & agree to ',
                                      style: TextStyle(
                                          fontSize: 14, color: White01)),
                                  TextSpan(
                                    text: 'Terms and Conditions',
                                    style: TextStyle(
                                        color: White01,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              maxLines: 2,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
