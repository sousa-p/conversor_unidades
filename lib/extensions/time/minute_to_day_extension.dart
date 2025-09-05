import 'package:conversor_unidades/extensions/time/hour_to_day_extension.dart';
import 'package:conversor_unidades/extensions/time/minute_to_hour_extension.dart';
import 'package:conversor_unidades/units/time/day_unit.dart';
import 'package:conversor_unidades/units/time/minute_unit.dart';

extension MinuteToDayExtension on MinuteUnit {
  DayUnit toDay() {
    return toHour().toDay();
  }
}
