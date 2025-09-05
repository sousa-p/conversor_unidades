import 'package:conversor_unidades/units/time/day_unit.dart';
import 'package:conversor_unidades/units/time/hour_unit.dart';

extension HourToDayExtension on HourUnit {
  DayUnit toDay() {
    final conversionResult = value / 24;
    return DayUnit(conversionResult);
  }
}
