import 'package:get/get_navigation/get_navigation.dart';
import 'package:teamhub_test/screens/login_screen.dart';

class MyRouter {
  static final router = [
    GetPage(
      name: login,
      page: () => const LoginScreen(),
    ),
  ];
  static String login = '/login';
  static String home = '/home';
  static String user = '/user';
}
