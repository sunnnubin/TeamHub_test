import 'package:get/get_navigation/get_navigation.dart';
import 'package:teamhub_test/screens/login_screen.dart';
import 'package:teamhub_test/screens/main_screen.dart';

class MyRouter {
  static final router = [
    GetPage(
      name: login,
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: main,
      page: () => const MainScreen(),
    ),
  ];
  static String login = '/login';
  static String main = '/main';
  static String user = '/user';
}
