import 'package:cricket/theme/const_color.dart';
import 'package:cricket/theme/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

class VerifyOtp extends StatelessWidget {
  const VerifyOtp({super.key});

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
                      HeadlineText1(text: "Verify with OTP"),
                      SizedBox(
                        height: 20,
                      ),
                      HeadlineText2(
                        text: "OTP sent your mobile number +91 9999955555",
                        fontSize: 12,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Enter OTP",
                        ),
                      ),
                      SizedBox(height: 10),
                      Align(
                        alignment: Alignment.center,
                        child: HeadlineText2(
                          text: "Resend OTP",
                        ),
                      ),
                      SizedBox(
                        height: 5,
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
                            Get.toNamed("bottomNav");
                          },
                          child: HeadlineText2(
                            text: "Verify",
                            textColor: Black01,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                      text:
                                          'Facing an issue? plase email as at ',
                                      style: TextStyle(
                                          fontSize: 14, color: White01)),
                                  TextSpan(
                                    text: 'support@onn.com',
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
