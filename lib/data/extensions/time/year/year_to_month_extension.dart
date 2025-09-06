import 'package:conversor_unidades/domain/units/time/month_unit.dart';
import 'package:conversor_unidades/domain/units/time/year_unit.dart';

extension YearToMonthExtension on YearUnit {
  MonthUnit toMonth() {
    final conversionResult = value * 12;
    return MonthUnit(conversionResult);
  }
}
