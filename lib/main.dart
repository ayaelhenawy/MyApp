import 'package:flutter/material.dart';
import 'package:myproject/src/Forgetpassword.dart';
import 'package:myproject/src/Login.dart';
import 'package:myproject/src/OTPValid.dart';
import 'package:myproject/src/ResetPssword.dart';
import 'package:myproject/src/Sign%20Up.dart';
import 'package:myproject/src/auth/onboarding/view/page/onboarding_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  bool onBording = sharedPreferences.getBool('onboarding') ?? false;

  MaterialApp materialApp = MaterialApp(
    // home: onBording ? const LoginScreen() : const OnBoardingPage(),
    onGenerateRoute: MyRoutes.onGenerateRoute,
    onGenerateInitialRoutes: (_) => MyRoutes.initRoutes,
  );

  runApp(materialApp);
}

class MyRoutes {
  static List<Route> initRoutes = [
    MaterialPageRoute<dynamic>(
      builder: (BuildContext context) => const SignUp(),
    ),
    MaterialPageRoute<dynamic>(
      builder: (BuildContext context) => const OnBoardingPage(),
    ),
  ];
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    if (settings == 'login') {
      return MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => const LoginScreen(),
      );
    } else {
      return MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => const SignUp(),
      );
    }
  }
}
