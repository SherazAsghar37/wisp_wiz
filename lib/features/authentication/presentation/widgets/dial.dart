import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wisp_wiz/core/common/extensions/build_context_extensions.dart';
import 'package:wisp_wiz/core/common/widgets/text/app_text.dart';
import 'package:wisp_wiz/core/utils/constants/sizes.dart';

class Dial extends StatefulWidget {
  final void Function(String) onTapDigit;
  final VoidCallback onDelete;

  const Dial({super.key, required this.onTapDigit, required this.onDelete});

  @override
  State<Dial> createState() => _DialState();
}

class _DialState extends State<Dial> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ...List.generate(
            3,
            (row) => Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(3, (col) {
                  final number = row * 3 + col + 1;
                  return _buildDialButton(
                    context: context,
                    text: number.toString(),
                    onTap: () => widget.onTapDigit(number.toString()),
                  );
                }),
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildEmptyButton(),

              _buildDialButton(
                context: context,
                text: '0',
                onTap: () => widget.onTapDigit("0"),
              ),

              _buildDialButton(
                context: context,
                icon: Icons.backspace_outlined,
                onTap: widget.onDelete,
              ),
            ],
          ),
        ],
      ).animate().fadeIn(
        delay: 500.ms,
        duration: 800.ms,
        curve: Curves.fastOutSlowIn,
      ),
    );
  }

  Widget _buildDialButton({
    required BuildContext context,
    String? text,
    IconData? icon,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
      child: Container(
        width: 50.w,
        height: 50.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
        ),
        child: Center(
          child:
              icon != null
                  ? Icon(icon)
                  : AppText(
                    text!,
                    style: context.theme.textTheme.headlineMedium!.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
        ),
      ),
    );
  }

  Widget _buildEmptyButton() {
    return SizedBox(width: 50.w, height: 50.w);
  }
}
