import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wisp_wiz/core/common/colours.dart';
import 'package:wisp_wiz/core/common/widgets/exports.dart';

class OTPInputField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode? focusNode;
  const OTPInputField({super.key, required this.controller, this.focusNode});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      width: 50.h,
      child: TextField(
        controller: controller,
        focusNode: focusNode,
        textAlign: TextAlign.center,
        showCursor: false,
        style: context.theme.textTheme.bodyLarge?.copyWith(
          fontSize: AppSizes.lg,
        ),
        keyboardType: TextInputType.number,
        maxLines: 1,
        decoration: InputDecoration(
          hintText: "_",
          contentPadding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 0.w),
          hintStyle: context.theme.textTheme.bodyLarge?.copyWith(
            fontSize: AppSizes.lg,
            color: Colours.hitTextColor,
          ),

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSizes.inputFieldRadiusSm),
            borderSide: const BorderSide(
              width: 1,
              color: Colours.lightTextFieldFillColor,
            ),
          ),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSizes.inputFieldRadiusSm),
            borderSide: const BorderSide(width: 1, color: Colours.primary),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSizes.inputFieldRadiusSm),
            borderSide: const BorderSide(
              width: 1,
              color: Colours.lightTextFieldFillColor,
            ),
          ),
        ),
      ),
    );
  }
}
