import 'package:conversor_unidades/extensions/time/day_to_hour_extension.dart';
import 'package:conversor_unidades/extensions/time/hour_to_minute_extension.dart';
import 'package:conversor_unidades/units/time/day_unit.dart';
import 'package:conversor_unidades/units/time/minute_unit.dart';

extension DayToMinuteExtension on DayUnit {
  MinuteUnit toMinute() {
    return  toHour().toMinute();
  }
}
