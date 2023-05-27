import 'package:provider/provider.dart';
import 'package:tesbisa/pages/dasboard_page.dart';
import 'package:tesbisa/pages/login.dart';
import 'package:tesbisa/pages/splash_pager.dart';
import 'package:flutter/material.dart';
import 'package:tesbisa/pages/dasboard_page.dart';
import 'package:tesbisa/provider/chat.dart';
import 'package:tesbisa/provider/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ChatProvider>(
          create: (context) => ChatProvider(),
        ),
        ChangeNotifierProvider<LoginProvider>(
          create: (context) => LoginProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const SplashPage(),
          'login': (context) => const LoginScreen(),
          'dasbord': (context) => const DasbordScreen(),
        },
      ),
    );
  }
}
