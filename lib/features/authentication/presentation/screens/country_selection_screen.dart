import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wisp_wiz/core/common/extensions/build_context_extensions.dart';
import 'package:wisp_wiz/core/constants/routes_constants.dart';
import 'package:wisp_wiz/features/authentication/presentation/widgets/countries_list.dart';

class CountrySelectionScreen extends StatelessWidget {
  static const String routeName = RoutesConstants.countrySelectionScreen;
  const CountrySelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.scaffoldBackgroundColor,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              spacing: 10.h,
              children: [
                SizedBox(height: 10.h),
                Text(
                  'Select country of residence',
                  style: context.theme.textTheme.headlineMedium,
                ).animate().fadeIn(
                  duration: 1000.ms,
                  curve: Curves.fastOutSlowIn,
                ),
                Text(
                  'Please select your country of residence for better experience.',
                  style: context.theme.textTheme.bodySmall,
                ).animate().fadeIn(
                  duration: 1000.ms,
                  curve: Curves.fastOutSlowIn,
                ),
                SizedBox(height: 10.h),
                CountriesList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
