import 'package:conversor_unidades/data/extensions/time/hour/hour_to_day_extension.dart';
import 'package:conversor_unidades/data/extensions/time/second/second_to_hour_extension.dart';
import 'package:conversor_unidades/domain/units/time/day_unit.dart';
import 'package:conversor_unidades/domain/units/time/second_unit.dart';

extension SecondToDayExtension on SecondUnit {
  DayUnit toDay() {
    return toHour().toDay();
  }
}
