import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:wisp_wiz/core/common/widgets/buttons/app_icon_button.dart';
import 'package:wisp_wiz/core/common/widgets/buttons/app_text_icon_button.dart';
import 'package:wisp_wiz/core/common/widgets/exports.dart';
import 'package:wisp_wiz/core/common/widgets/tex-fields/app_text_field.dart';
import 'package:wisp_wiz/core/utils/constants/routes_constants.dart';

class NameInputScreen extends StatelessWidget {
  static const String routeName = RoutesConstants.userNameScreen;
  final String image;
  const NameInputScreen({super.key, required this.image});

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
              AppIconButton(icon: Icons.arrow_back, onPressed: () {}),
              SizedBox(height: 5.h),
              Text(
                'Enter your nickname',
                style: context.theme.textTheme.headlineMedium,
              ),
              Text(
                'You can change it later in settings.',
                style: context.theme.textTheme.bodySmall,
              ),
              SizedBox(height: 50.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 30.h,
                children: [
                  Hero(
                    tag: image,
                    child: Container(
                      height: 150.w,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          AppSizes.borderRadiusLg * 2.8,
                        ),
                      ),
                      child: Image.asset(image, fit: BoxFit.contain),
                    ),
                  ),
                  AppTextField(
                    hintText: "@sheraz_dev",
                    prefixIcon: HugeIcons.strokeRoundedAt,
                  ),
                ],
              ),
              Spacer(),
              AppTextIconButton(text: "Continue", onPressed: () {}),
            ],
          ).animate().fadeIn(duration: 1000.ms, curve: Curves.fastOutSlowIn),
        ),
      ),
    );
  }
}
