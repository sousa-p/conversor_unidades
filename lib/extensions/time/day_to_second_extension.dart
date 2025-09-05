import 'package:conversor_unidades/extensions/time/day_to_hour_extension.dart';
import 'package:conversor_unidades/extensions/time/hour_to_minute_extension.dart';
import 'package:conversor_unidades/extensions/time/minute_to_second_extension.dart';
import 'package:conversor_unidades/units/time/day_unit.dart';
import 'package:conversor_unidades/units/time/second_unit.dart';

extension DayToMinuteExtension on DayUnit {
  SecondUnit toMinute() {
    return  toHour().toMinute().toSecond();
  }
}
