import 'package:conversor_unidades/domain/units/time/day_unit.dart';
import 'package:conversor_unidades/domain/units/time/year_unit.dart';

extension YearToDayExtension on YearUnit {
  DayUnit toDay() {
    final conversionResult = value * 365;
    return DayUnit(conversionResult);
  }
}
