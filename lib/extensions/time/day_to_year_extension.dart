import 'package:conversor_unidades/units/time/day_unit.dart';
import 'package:conversor_unidades/units/time/year_unit.dart';

extension DayToHourExtension on DayUnit {
  YearUnit toYear() {
    final conversionResult = value / 365;
    return YearUnit(conversionResult);
  }
}
