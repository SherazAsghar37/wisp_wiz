import 'package:wisp_wiz/core/common/utils/widget_utils.dart';
import 'package:wisp_wiz/core/common/widgets/exports.dart';
import 'package:wisp_wiz/core/utils/constants/enums.dart';

class AppIcon extends StatelessWidget {
  final Color? color;
  final double? size;
  final String name;
  final IconData? icon;
  final IconType type;
  const AppIcon({
    super.key,
    this.color,
    this.size = 24,
    this.name = "",
    this.icon,
    this.type = IconType.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return type == IconType.iconData
        ? WidgetUtils.buildIconUsingIconData(
          context,
          icon: icon,
          color: color,
          size: size,
        )
        : WidgetUtils.buildIconUsingSvg(
          context,
          name: name,
          color: color,
          size: size,
        );
  }
}
