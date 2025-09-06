import 'package:conversor_unidades/data/extensions/time/day/day_to_hour_extension.dart';
import 'package:conversor_unidades/data/extensions/time/hour/hour_to_minute_extension.dart';
import 'package:conversor_unidades/data/extensions/time/minute/minute_to_second_extension.dart';
import 'package:conversor_unidades/domain/units/time/day_unit.dart';
import 'package:conversor_unidades/domain/units/time/second_unit.dart';

extension DayToSecondExtension on DayUnit {
  SecondUnit toSecond() {
    return toHour().toMinute().toSecond();
  }
}
