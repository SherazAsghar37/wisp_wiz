import 'package:flutter_svg/svg.dart';
import 'package:wisp_wiz/core/common/widgets/exports.dart';

abstract class WidgetUtils {
  static Widget buildIconUsingIconData(
    BuildContext context, {
    IconData? icon,
    Color? color,
    double? size,
  }) {
    return Icon(
      icon,
      color: color ?? context.theme.colorScheme.inversePrimary,
      size: size ?? 24,
    );
  }

  static Widget buildIconUsingSvg(
    BuildContext context, {
    required String name,
    Color? color,
    double? size,
  }) {
    return SizedBox(
      width: size ?? 24, // Enforce width
      height: size ?? 24, // Enforce height
      child: SvgPicture.asset(
        name,
        semanticsLabel: 'Acme Logo',
        colorFilter: ColorFilter.mode(
          color ?? context.theme.colorScheme.inversePrimary,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
