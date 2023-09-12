import 'package:_BeHealthey/Chat_pages/chat_screen.dart';
import 'package:_BeHealthey/new%20component/app_theme.dart';
import 'package:_BeHealthey/pages/home_screen.dart';
import 'package:_BeHealthey/pages/login_screen.dart';
import 'package:_BeHealthey/pages/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    ChangeNotifierProvider(
      create: (context) => AppTheme(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: child!,
        );
      },
      routes: {
        'Loginscreen': (context) => const LoginScreen(),
        'SignUp': (context) => const SignUp(),
        'BottomNavagetorBarScreen': (context) => const BottomNavagertorBarScreen(),
        'ChatScreen': (context) => ChatScreen(),

      },
      theme: Provider.of<AppTheme>(context).getThemeData(),
      initialRoute: 'Loginscreen',
    );
  }
}
