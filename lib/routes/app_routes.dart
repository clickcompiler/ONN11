import 'package:flutter/material.dart';
import 'package:onn_11/presentation/frame_one_screen/frame_one_screen.dart';
import 'package:onn_11/presentation/frame_two_screen/frame_two_screen.dart';
import 'package:onn_11/presentation/frame_twentytwo_screen/frame_twentytwo_screen.dart';
import 'package:onn_11/presentation/frame_four_screen/frame_four_screen.dart';
import 'package:onn_11/presentation/frame_five_screen/frame_five_screen.dart';
import 'package:onn_11/presentation/frame_six_screen/frame_six_screen.dart';
import 'package:onn_11/presentation/frame_seven_screen/frame_seven_screen.dart';
import 'package:onn_11/presentation/frame_eight_screen/frame_eight_screen.dart';
import 'package:onn_11/presentation/frame_nine_screen/frame_nine_screen.dart';
import 'package:onn_11/presentation/frame_ten_screen/frame_ten_screen.dart';
import 'package:onn_11/presentation/frame_eleven_screen/frame_eleven_screen.dart';
import 'package:onn_11/presentation/frame_twelve_screen/frame_twelve_screen.dart';
import 'package:onn_11/presentation/frame_thirteen_screen/frame_thirteen_screen.dart';
import 'package:onn_11/presentation/frame_fourteen_screen/frame_fourteen_screen.dart';
import 'package:onn_11/presentation/frame_fifteen_screen/frame_fifteen_screen.dart';
import 'package:onn_11/presentation/frame_sixteen_screen/frame_sixteen_screen.dart';
import 'package:onn_11/presentation/frame_seventeen_screen/frame_seventeen_screen.dart';
import 'package:onn_11/presentation/frame_eighteen_screen/frame_eighteen_screen.dart';
import 'package:onn_11/presentation/frame_nineteen_screen/frame_nineteen_screen.dart';
import 'package:onn_11/presentation/frame_twenty_screen/frame_twenty_screen.dart';
import 'package:onn_11/presentation/frame_twentyone_screen/frame_twentyone_screen.dart';
import 'package:onn_11/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String frameOneScreen = '/frame_one_screen';

  static const String frameTwoScreen = '/frame_two_screen';

  static const String frameTwentytwoScreen = '/frame_twentytwo_screen';

  static const String frameFourScreen = '/frame_four_screen';

  static const String frameFiveScreen = '/frame_five_screen';

  static const String frameSixScreen = '/frame_six_screen';

  static const String frameSevenScreen = '/frame_seven_screen';

  static const String frameEightScreen = '/frame_eight_screen';

  static const String frameNineScreen = '/frame_nine_screen';

  static const String frameTenScreen = '/frame_ten_screen';

  static const String frameElevenScreen = '/frame_eleven_screen';

  static const String frameTwelveScreen = '/frame_twelve_screen';

  static const String frameThirteenScreen = '/frame_thirteen_screen';

  static const String frameFourteenScreen = '/frame_fourteen_screen';

  static const String frameFifteenScreen = '/frame_fifteen_screen';

  static const String frameSixteenScreen = '/frame_sixteen_screen';

  static const String frameSeventeenScreen = '/frame_seventeen_screen';

  static const String frameEighteenScreen = '/frame_eighteen_screen';

  static const String frameNineteenScreen = '/frame_nineteen_screen';

  static const String frameTwentyScreen = '/frame_twenty_screen';

  static const String frameTwentyoneScreen = '/frame_twentyone_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        frameOneScreen: FrameOneScreen.builder,
        frameTwoScreen: FrameTwoScreen.builder,
        frameTwentytwoScreen: FrameTwentytwoScreen.builder,
        frameFourScreen: FrameFourScreen.builder,
        frameFiveScreen: FrameFiveScreen.builder,
        frameSixScreen: FrameSixScreen.builder,
        frameSevenScreen: FrameSevenScreen.builder,
        frameEightScreen: FrameEightScreen.builder,
        frameNineScreen: FrameNineScreen.builder,
        frameTenScreen: FrameTenScreen.builder,
        frameElevenScreen: FrameElevenScreen.builder,
        frameTwelveScreen: FrameTwelveScreen.builder,
        frameThirteenScreen: FrameThirteenScreen.builder,
        frameFourteenScreen: FrameFourteenScreen.builder,
        frameFifteenScreen: FrameFifteenScreen.builder,
        frameSixteenScreen: FrameSixteenScreen.builder,
        frameSeventeenScreen: FrameSeventeenScreen.builder,
        frameEighteenScreen: FrameEighteenScreen.builder,
        frameNineteenScreen: FrameNineteenScreen.builder,
        frameTwentyScreen: FrameTwentyScreen.builder,
        frameTwentyoneScreen: FrameTwentyoneScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: FrameOneScreen.builder
      };
}
