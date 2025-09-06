import 'package:conversor_unidades/data/extensions/time/month/month_to_year_extension.dart';
import 'package:conversor_unidades/data/extensions/time/year/year_to_day_extension.dart';
import 'package:conversor_unidades/domain/units/time/day_unit.dart';
import 'package:conversor_unidades/domain/units/time/month_unit.dart';

extension MonthToDayExtension on MonthUnit {
  DayUnit toDay() {
    return toYear().toDay();
  }
}
