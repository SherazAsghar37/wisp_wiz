import 'package:flutter/material.dart';
import 'package:wisp_wiz/core/common/extensions/build_context_extensions.dart';
import 'package:wisp_wiz/core/common/widgets/buttons/app_bounce.dart';
import 'package:wisp_wiz/core/common/widgets/icons/app_icon.dart';
import 'package:wisp_wiz/core/utils/constants/enums.dart';
import 'package:wisp_wiz/core/utils/constants/sizes.dart';

class AppIconButton extends StatelessWidget {
  final IconData? icon;
  final Function() onPressed;
  final Color? color;
  final Color? backgroundColor;
  final double? size;
  final double? padding;
  final double? radius;
  final IconType type;
  final String name;
  const AppIconButton({
    super.key,
    this.icon,
    required this.onPressed,
    this.backgroundColor,
    this.color,
    this.size,
    this.padding,
    this.radius,
    this.name = "",
    this.type = IconType.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: AppBounce(
        onPressed: onPressed,
        child: Container(
          padding: EdgeInsets.all(padding ?? AppSizes.smd),
          decoration: BoxDecoration(
            color: backgroundColor ?? context.theme.cardColor,
            borderRadius: BorderRadius.circular(radius ?? AppSizes.mdlg),
          ),
          child: Center(
            child: AppIcon(
              icon: icon,
              name: name,
              size: size,
              type: type,
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}
