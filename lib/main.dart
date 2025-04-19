import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wisp_wiz/core/utils/constants/image_strings.dart';
import 'package:wisp_wiz/core/utils/theme/theme.dart';
import 'package:wisp_wiz/features/chat/presentation/screens/chats_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder:
          (context, child) => MaterialApp(
            title: 'Wisp Wiz',
            themeMode: ThemeMode.light,
            theme: AAppTheme.lightTheme,
            darkTheme: AAppTheme.darkTheme,
            home: ChatsScreen(image: ImageStrings.profileImage1),
          ),
    );
  }
}
