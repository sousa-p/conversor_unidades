import 'package:conversor_unidades/data/extensions/time/day/day_to_year_extension.dart';
import 'package:conversor_unidades/data/extensions/time/hour/hour_to_day_extension.dart';
import 'package:conversor_unidades/domain/units/time/hour_unit.dart';
import 'package:conversor_unidades/domain/units/time/year_unit.dart';

extension HourToYearExtension on HourUnit {
  YearUnit toYear() {
    return toDay().toYear();
  }
}
