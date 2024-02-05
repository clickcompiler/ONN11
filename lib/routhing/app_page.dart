import 'package:cricket/UI/auth/login.dart';
import 'package:cricket/UI/auth/verfyOtp.dart';
import 'package:cricket/UI/home/bottomNav.dart';
import 'package:cricket/UI/home/chooseTeam.dart';
import 'package:cricket/UI/home/createTeam.dart';
import 'package:cricket/UI/home/dreamteam.dart';
import 'package:cricket/UI/home/editProfile.dart';
import 'package:cricket/UI/home/findGuru.dart';
import 'package:cricket/UI/home/home.dart';
import 'package:cricket/UI/home/matchResult.dart';
import 'package:cricket/UI/home/matchdetail.dart';
import 'package:cricket/UI/home/playerMap.dart';
import 'package:cricket/UI/home/profile.dart';
import 'package:cricket/UI/splash/splash.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../UI/my_balance/my_balance_screen.dart';

class AppPages {
  static final routes = [
    GetPage(name: '/', page: () => SplashScreen()),
    GetPage(name: '/login', page: () => LoginPage()),
    GetPage(name: '/verfyOtp', page: () => VerifyOtp()),
    GetPage(name: '/bottomNav', page: () => BottomNavPage()),
    GetPage(name: '/home_screen', page: () => HomeScreen()),
    GetPage(name: '/matchdetail', page: () => MatchDetails()),
    GetPage(name: '/createTeam', page: () => CreateTeam()),
    GetPage(name: '/my_balance_screen', page: () => MyBalanceScreen()),
    GetPage(name: '/chooseTeam', page: () => ChooseTeam()),
    GetPage(name: '/playerMap', page: () => PlayerMap()),
    GetPage(name: '/matchResult', page: () => MatchResult()),
    GetPage(name: '/dreamTeam', page: () => DreamTeam()),
    GetPage(name: '/profile', page: () => ProfilePage()),
    GetPage(name: '/edit', page: () => EditProfile()),
    GetPage(name: '/findGuru', page: () => FindGuruPage()),
  ];
}
