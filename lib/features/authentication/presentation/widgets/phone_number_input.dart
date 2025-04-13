import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wisp_wiz/core/common/widgets/exports.dart';
import 'package:wisp_wiz/core/common/widgets/tex-fields/app_normal_text_field.dart';
import 'package:wisp_wiz/core/common/widgets/text/app_text.dart';
import 'package:wisp_wiz/features/authentication/presentation/data/models/country_model.dart';

class PhoneNumberInput extends StatelessWidget {
  const PhoneNumberInput({super.key, required this.country});

  final CountryModel country;

  @override
  Widget build(BuildContext context) {
    return Row(
          spacing: 10.w,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 10.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  AppSizes.inputFieldRadiusSm,
                ),
                color: context.theme.cardColor,
              ),
              child: Row(
                spacing: 10.w,
                children: [
                  Container(
                    height: 20.h,
                    width: 20.h,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppSizes.sm / 1.5),
                    ),
                    child: CachedNetworkImage(
                      imageUrl: country.url,
                      fit: BoxFit.fill,
                    ),
                  ),
                  AppText(
                    country.code,
                    style: context.theme.textTheme.bodyLarge?.copyWith(
                      color: context.theme.textTheme.bodyMedium?.color,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: AppNormalTextField(hintText: "312 3456789")),
          ],
        )
        .animate(delay: 20.ms)
        .fadeIn(duration: 1000.ms, curve: Curves.fastOutSlowIn)
        .slideY(
          begin: 0.5,
          end: 0,
          duration: 1000.ms,
          curve: Curves.fastOutSlowIn,
        );
  }
}
