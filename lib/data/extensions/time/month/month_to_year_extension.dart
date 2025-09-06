import 'package:conversor_unidades/domain/units/time/month_unit.dart';
import 'package:conversor_unidades/domain/units/time/year_unit.dart';

extension MonthToYearExtension on MonthUnit {
  YearUnit toYear() {
    final conversionResult = value / 12;
    return YearUnit(conversionResult);
  }
}
