import 'package:conversor_unidades/data/extensions/time/day/day_to_hour_extension.dart';
import 'package:conversor_unidades/data/extensions/time/year/year_to_day_extension.dart';
import 'package:conversor_unidades/domain/units/time/hour_unit.dart';
import 'package:conversor_unidades/domain/units/time/year_unit.dart';

extension YearToHourExtension on YearUnit {
  HourUnit toHour() {
    return toDay().toHour();
  }
}
