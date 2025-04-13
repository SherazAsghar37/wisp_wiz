import 'package:flutter/material.dart';
import 'package:wisp_wiz/core/common/extensions/build_context_extensions.dart';
import 'package:wisp_wiz/core/common/widgets/icons/app_icon.dart';
import 'package:wisp_wiz/core/utils/constants/enums.dart';
import 'package:wisp_wiz/core/utils/constants/sizes.dart';

class AppIconButton extends StatelessWidget {
  final IconData? icon;
  final Function()? onPressed;
  final Color? color;
  final double? size;
  final double? padding;
  final double? radius;
  final IconType type;
  final String name;
  const AppIconButton({
    super.key,
    this.icon,
    this.onPressed,
    this.color,
    this.size,
    this.padding,
    this.radius,
    this.name = "",
    this.type = IconType.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: color,
      padding: EdgeInsets.symmetric(
        vertical: padding ?? AppSizes.md,
        horizontal: padding ?? AppSizes.sm,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius ?? AppSizes.borderRadiusMd),
      ),
      splashColor: context.colorScheme.secondary,
      hoverColor: context.theme.hoverColor,
      child: AppIcon(
        icon: icon,
        name: name,
        size: size,
        type: type,
        color: color,
      ),
    );
  }
}
