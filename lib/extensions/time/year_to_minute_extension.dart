import 'package:conversor_unidades/extensions/time/day_to_hour_extension.dart';
import 'package:conversor_unidades/extensions/time/hour_to_minute_extension.dart';
import 'package:conversor_unidades/extensions/time/year_to_day_extension.dart';
import 'package:conversor_unidades/units/time/minute_unit.dart';
import 'package:conversor_unidades/units/time/year_unit.dart';

extension YearToMinuteExtension on YearUnit {
  MinuteUnit toMinute() {
    return toDay().toHour().toMinute();
  }
}
