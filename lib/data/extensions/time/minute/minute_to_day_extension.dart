import 'package:conversor_unidades/data/extensions/time/hour/hour_to_day_extension.dart';
import 'package:conversor_unidades/data/extensions/time/minute/minute_to_hour_extension.dart';
import 'package:conversor_unidades/domain/units/time/day_unit.dart';
import 'package:conversor_unidades/domain/units/time/minute_unit.dart';

extension MinuteToDayExtension on MinuteUnit {
  DayUnit toDay() {
    return toHour().toDay();
  }
}
