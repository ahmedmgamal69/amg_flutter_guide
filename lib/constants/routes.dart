// import 'package:amg_flutter_guide/screens/home.dart';
import 'package:amg_flutter_guide/screens/home.dart';
import 'package:amg_flutter_guide/screens/internal_screens/askQuestion.dart';
import 'package:amg_flutter_guide/screens/internal_screens/contact_us.dart';
import 'package:amg_flutter_guide/screens/internal_screens/flutter_errors.dart';
import 'package:amg_flutter_guide/screens/internal_screens/flutter_learning.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

List<GetPage<dynamic>> routesAPI = [
  // Home Page
  GetPage(name: "/", page: () => const HomePage()),

  // ###############
  // Internal Pages
  // ###############
  // (1) Flutter Learning
  GetPage(name: "/flutter_learning", page: () => const FlutterLearningPage()),

  // (2) Flutter Errors
  GetPage(name: "/flutter_errors", page: () => const FlutterErrorsPage()),

  // (3) Contact Us
  GetPage(name: "/contact_us", page: () => const ContactUsPage()),

  // (4) Ask Question
  GetPage(name: "/askQuestion", page: () => const AskQuestionPage()),
];
