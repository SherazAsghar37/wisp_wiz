import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wisp_wiz/core/common/extensions/build_context_extensions.dart';
import 'package:wisp_wiz/core/common/widgets/buttons/app_icon_button.dart';
import 'package:wisp_wiz/core/common/widgets/buttons/app_text_icon_button.dart';
import 'package:wisp_wiz/core/utils/constants/routes_constants.dart';
import 'package:wisp_wiz/features/authentication/presentation/data/models/country_model.dart';
import 'package:wisp_wiz/features/authentication/presentation/widgets/phone_number_input.dart';

class PhoneNumberInputScreen extends StatelessWidget {
  final CountryModel country;
  static const String routeName = RoutesConstants.otpScreen;
  const PhoneNumberInputScreen({super.key, required this.country});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.scaffoldBackgroundColor,

      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 10.h,
            children: [
              AppIconButton(icon: Icons.arrow_back, onPressed: () {})
                  .animate()
                  .fadeIn(duration: 1000.ms, curve: Curves.fastOutSlowIn),
              SizedBox(height: 5.h),
              Text(
                'Enter your phone number',
                style: context.theme.textTheme.headlineMedium,
              ).animate().fadeIn(
                duration: 1000.ms,
                curve: Curves.fastOutSlowIn,
              ),
              Text(
                'You will receive a verification code on this number to verify your identity.',
                style: context.theme.textTheme.bodySmall,
              ).animate().fadeIn(
                duration: 1000.ms,
                curve: Curves.fastOutSlowIn,
              ),
              SizedBox(height: 10.h),
              PhoneNumberInput(country: country),
              Spacer(),
              AppTextIconButton(text: "Continue", onPressed: () {})
                  .animate(delay: 300.ms)
                  .fadeIn(duration: 1000.ms, curve: Curves.fastOutSlowIn)
                  .slideY(
                    begin: 0.5,
                    end: 0,
                    duration: 1000.ms,
                    curve: Curves.fastOutSlowIn,
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
