
import 'package:flutter/material.dart';
import 'package:flutter_chat_app/utils/routes/routes_name.dart';
import '../../screens/chat_screen.dart';
import '../../screens/login_screen.dart';
import '../../screens/registration_screen.dart';
import '../../screens/welcome_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {

    switch (settings.name) {
      case RoutesName.wellcome:
        return MaterialPageRoute(
          builder: (BuildContext context) =>  WelcomeScreen(),
        );

      case RoutesName.login:
        return MaterialPageRoute(
          builder: (BuildContext context) =>  LoginScreen(), // TODO: Replace with LoginScreen()
        );
      case RoutesName.chat:
        return MaterialPageRoute(
          builder: (BuildContext context) =>  ChatScreen(), // TODO: Replace with LoginScreen()
        );

      case RoutesName.registration:
        return MaterialPageRoute(
          builder: (BuildContext context) =>  RegistrationScreen(), // TODO: Replace with RegistrationScreen()
        );

      default:
        return MaterialPageRoute(
          builder: (BuildContext context) => const Scaffold(
            body: Center(
              child: Text("No route found"),
            ),
          ),
        );
    }
  }
}
