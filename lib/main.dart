import 'package:flutter/material.dart';
import 'package:wisp_wiz/core/utils/theme/theme.dart';
import 'package:wisp_wiz/features/user/presentation/screens/phone_authentication_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisp Wiz',
      themeMode: ThemeMode.light,
      theme: AAppTheme.lightTheme,
      darkTheme: AAppTheme.darkTheme,
      home: PhoneAuthenticationScreen(),
    );
  }
}
