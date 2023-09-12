import 'package:be_healthy/chat_pages/chat_screen.dart';
import 'package:be_healthy/new%20component/app_theme.dart';
import 'package:be_healthy/pages/home_screen.dart';
import 'package:be_healthy/pages/login_screen.dart';
import 'package:be_healthy/pages/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

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
    return MaterialApp(
      routes: {
        'Loginscreen': (context) => const LoginScreen(),
        'SignUp': (context) => const SignUp(),
        'BottomNavagetorBarScreen': (context) =>
            const BottomNavagertorBarScreen(),
        'ChatScreen': (context) => ChatScreen(),
      },
      theme: Provider.of<AppTheme>(context).getThemeData(),
      initialRoute: 'Loginscreen',
    );
  }
}
