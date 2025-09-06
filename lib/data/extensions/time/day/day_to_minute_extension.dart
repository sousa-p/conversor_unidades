import 'package:conversor_unidades/data/extensions/time/day/day_to_hour_extension.dart';
import 'package:conversor_unidades/data/extensions/time/hour/hour_to_minute_extension.dart';
import 'package:conversor_unidades/domain/units/time/day_unit.dart';
import 'package:conversor_unidades/domain/units/time/minute_unit.dart';

extension DayToMinuteExtension on DayUnit {
  MinuteUnit toMinute() {
    return toHour().toMinute();
  }
}
