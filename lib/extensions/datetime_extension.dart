import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String get hour12Format => DateFormat('ha').format(this);

  String get monthDay => DateFormat('MMM d').format(this);
}
