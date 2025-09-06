import 'package:conversor_unidades/domain/units/time/day_unit.dart';
import 'package:conversor_unidades/domain/units/time/hour_unit.dart';

extension DayToHourExtension on DayUnit {
  HourUnit toHour() {
    final conversionResult = value * 24;
    return HourUnit(conversionResult);
  }
}
