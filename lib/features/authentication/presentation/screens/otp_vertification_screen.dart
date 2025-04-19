import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wisp_wiz/core/common/extensions/build_context_extensions.dart';
import 'package:wisp_wiz/core/common/widgets/buttons/app_icon_button.dart';
import 'package:wisp_wiz/core/common/widgets/buttons/app_text_icon_button.dart';
import 'package:wisp_wiz/core/utils/constants/routes_constants.dart';
import 'package:wisp_wiz/features/authentication/presentation/widgets/dial.dart';
import 'package:wisp_wiz/features/authentication/presentation/widgets/otp_input_field.dart';

class OtpVertificationScreen extends StatefulWidget {
  static const String routeName = RoutesConstants.otpScreen;
  const OtpVertificationScreen({super.key});

  @override
  State<OtpVertificationScreen> createState() => _OtpVertificationScreenState();
}

class _OtpVertificationScreenState extends State<OtpVertificationScreen> {
  final List<TextEditingController> _controllers = List.generate(
    4,
    (_) => TextEditingController(),
  );
  final List<FocusNode> _focusNodes = List.generate(4, (_) => FocusNode());

  int currentFocusIndex = 0;

  void _setDigit(String value) {
    if (currentFocusIndex < 4) {
      _controllers[currentFocusIndex].text = value;
      if (currentFocusIndex < 3) {
        FocusScope.of(context).requestFocus(_focusNodes[++currentFocusIndex]);
      }
    }
  }

  void _deleteDigit() {
    if (_controllers[currentFocusIndex].text.isNotEmpty) {
      _controllers[currentFocusIndex].clear();
    } else if (currentFocusIndex > 0) {
      _controllers[--currentFocusIndex].clear();
      FocusScope.of(context).requestFocus(_focusNodes[currentFocusIndex]);
    }
  }

  @override
  void dispose() {
    for (int i = 0; i < _controllers.length; i++) {
      _controllers[i].dispose();
      _focusNodes[i].dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.scaffoldBackgroundColor,
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    4,
                    (index) => OTPInputField(
                          controller: _controllers[index],
                          focusNode: _focusNodes[index],
                        )
                        .animate(delay: 100.ms + (index * 80).ms)
                        .fadeIn(duration: 1000.ms, curve: Curves.fastOutSlowIn)
                        .slideY(
                          begin: 0.5,
                          end: 0,
                          duration: 1000.ms,
                          curve: Curves.fastOutSlowIn,
                        ),
                  ),
                ),
              ),
              SizedBox(height: 10.h),

              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    AppTextIconButton(text: "Continue", onPressed: () {})
                        .animate(delay: 400.ms)
                        .fadeIn(duration: 1000.ms, curve: Curves.fastOutSlowIn)
                        .slideY(
                          begin: 0.3,
                          end: 0,
                          duration: 1000.ms,
                          curve: Curves.fastOutSlowIn,
                        ),
                    Dial(onTapDigit: _setDigit, onDelete: _deleteDigit),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
