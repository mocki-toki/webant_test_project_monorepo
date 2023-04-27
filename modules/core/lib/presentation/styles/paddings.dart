import 'package:core/core.dart';

abstract class Paddings {
  static const horizontal16 = EdgeInsets.symmetric(horizontal: 16);
  static const vertical30 = EdgeInsets.symmetric(vertical: 30);
  static const symmetric16x30 = EdgeInsets.symmetric(horizontal: 16, vertical: 30);
  static const logoPadding = EdgeInsets.all(32);
  static const inputDecorationContent = EdgeInsets.fromLTRB(15, 14, 15, 9);
}
