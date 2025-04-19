import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wisp_wiz/core/common/widgets/buttons/app_bounce.dart';
import 'package:wisp_wiz/core/common/widgets/buttons/app_icon_button.dart';
import 'package:wisp_wiz/core/common/widgets/exports.dart';
import 'package:wisp_wiz/core/utils/constants/image_strings.dart';
import 'package:wisp_wiz/core/utils/constants/routes_constants.dart';

class ProfilePictureSelectionScreen extends StatelessWidget {
  static const String routeName = RoutesConstants.profilePicSelectionScreen;
  const ProfilePictureSelectionScreen({super.key});

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
                'Select a profile picture',
                style: context.theme.textTheme.headlineMedium,
              ).animate().fadeIn(
                duration: 1000.ms,
                curve: Curves.fastOutSlowIn,
              ),
              Text(
                'You can change it later in settings.',
                style: context.theme.textTheme.bodySmall,
              ).animate().fadeIn(
                duration: 1000.ms,
                curve: Curves.fastOutSlowIn,
              ),
              SizedBox(height: 10.h),
              Wrap(
                alignment: WrapAlignment.center,
                direction: Axis.horizontal,
                runSpacing: 20.h,
                spacing: 20.w,
                children:
                    ImageStrings.profileImages
                        .asMap()
                        .entries
                        .map(
                          (e) => AppBounce(
                            onPressed: () {},
                            child: Hero(
                              tag: e.value,
                              child: Container(
                                    height: 90.w,
                                    width: 90.w,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        AppSizes.borderRadiusLg * 1.5,
                                      ),
                                    ),
                                    child: Image.asset(
                                      e.value,
                                      fit: BoxFit.contain,
                                    ),
                                  )
                                  .animate(delay: 100.ms + (e.key * 50).ms)
                                  .fadeIn(
                                    duration: 1000.ms,
                                    curve: Curves.fastOutSlowIn,
                                  )
                                  .slideY(
                                    begin: 0.3,
                                    end: 0,
                                    duration: 1000.ms,
                                    curve: Curves.fastOutSlowIn,
                                  ),
                            ),
                          ),
                        )
                        .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
