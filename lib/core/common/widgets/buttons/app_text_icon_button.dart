import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:wisp_wiz/core/common/widgets/buttons/app_bounce.dart';
import 'package:wisp_wiz/core/common/widgets/exports.dart';

class AppTextIconButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  final Function() onPressed;
  const AppTextIconButton({
    super.key,
    required this.text,
    this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBounce(
      onPressed: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 20.w),
        decoration: BoxDecoration(
          color: context.theme.primaryColor,
          borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null)
              HugeIcon(icon: icon!, color: context.theme.cardColor),
            Text(
              text,
              style: context.theme.textTheme.bodyLarge?.copyWith(
                color: context.theme.colorScheme.onPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
