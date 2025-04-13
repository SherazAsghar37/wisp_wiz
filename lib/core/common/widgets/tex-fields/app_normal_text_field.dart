import 'package:hugeicons/hugeicons.dart';
import 'package:wisp_wiz/core/common/colours.dart';
import 'package:wisp_wiz/core/common/widgets/exports.dart';

class AppNormalTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final String? errorText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final Function()? onTap;

  const AppNormalTextField({
    super.key,
    this.controller,
    this.hintText,
    this.errorText,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    this.onSubmitted,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: onTap,
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      onTapUpOutside: (event) => FocusScope.of(context).unfocus(),
      controller: controller,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        hintText: hintText,
        prefixIcon:
            prefixIcon == null
                ? null
                : HugeIcon(
                  icon: prefixIcon!,
                  color: Colours.black,
                  size: AppSizes.lg,
                ),
        suffixIcon:
            suffixIcon == null
                ? null
                : HugeIcon(
                  icon: suffixIcon!,
                  color: Colours.black,
                  size: AppSizes.lg,
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
    );
  }
}
