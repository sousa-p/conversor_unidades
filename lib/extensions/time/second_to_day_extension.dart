import 'package:conversor_unidades/extensions/time/hour_to_day_extension.dart';
import 'package:conversor_unidades/extensions/time/minute_to_hour_extension.dart';
import 'package:conversor_unidades/extensions/time/second_to_minute_extension.dart';
import 'package:conversor_unidades/units/time/day_unit.dart';
import 'package:conversor_unidades/units/time/second_unit.dart';

extension SecondToDayExtension on SecondUnit {
  DayUnit toDay() {
    return toMinute().toHour().toDay();
  }
}
