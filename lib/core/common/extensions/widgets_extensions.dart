import 'package:wisp_wiz/core/common/widgets/exports.dart';

extension WidgetsExtensions on Widget {
  Widget? showOrNull(bool isShow) => isShow ? this : null;
}
