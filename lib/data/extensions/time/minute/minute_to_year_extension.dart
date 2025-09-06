import 'package:conversor_unidades/data/extensions/time/day/day_to_year_extension.dart';
import 'package:conversor_unidades/data/extensions/time/minute/minute_to_day_extension.dart';
import 'package:conversor_unidades/domain/units/time/minute_unit.dart';
import 'package:conversor_unidades/domain/units/time/year_unit.dart';

extension MinuteToYearExtension on MinuteUnit {
  YearUnit toYear() {
    return toDay().toYear();
  }
}
