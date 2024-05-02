
import 'package:flutter/material.dart';

import 'package:myproject/src/core/routing/myroute.dart';


void main()
{
  MaterialApp materialApp =  MaterialApp(
    debugShowCheckedModeBanner: false,
    onGenerateInitialRoutes: (_) => MyRoute.initialRoutes,
    onGenerateRoute: MyRoute.onNavigateByName,
  );
  runApp(materialApp);
}
// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//
//   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//   bool onBording = sharedPreferences.getBool('onboarding') ?? false;
//
//   MaterialApp materialApp = MaterialApp(
//     // home: onBording ? const LoginScreen() : const OnBoardingPage(),
//     useInheritedMediaQuery: true,
//     builder: DevicePreview.appBuilder,
//     onGenerateRoute: MyRoute.onNavigateByName,
//     onGenerateInitialRoutes: (_) => MyRoute.initialRoutes,
//   );
//   runApp(
//     DevicePreview(
//     enabled: false,
//     builder: (context) => materialApp,
//   ),);
// }

// class MyRoutes {
//   static List<Route> initRoutes = [
//     MaterialPageRoute<dynamic>(
//         builder: (BuildContext context) => const OnBoardingPage()),
//     MaterialPageRoute<dynamic>(
//         builder: (BuildContext context) => const SignUp()),
//     MaterialPageRoute<dynamic>(
//         builder: (BuildContext context) => const DashboardPage()),
//    ];
//   static Route<dynamic> onGenerateRoute(RouteSettings settings) {
//     switch (settings.name) {
//       case 'login':
//         final List data = settings.arguments as List;
//         return MaterialPageRoute<dynamic>(
//             builder: (BuildContext context) => const DashboardPage());
//       case 'register':
//         return MaterialPageRoute<dynamic>(
//             builder: (BuildContext context) => const SignUp());
//       default:
//         return MaterialPageRoute<dynamic>(
//             builder: (BuildContext context) => const OnBoardingPage());
//     }
//   }
// }

// class MyApp extends StatelessWidget{
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         Provider<DashboardControllerCubit>(create: (_) => DashboardControllerCubit()),
//         // Add other providers here
//       ],
//       child: DashboardPage(),
//
//     );
//   }
//   }
