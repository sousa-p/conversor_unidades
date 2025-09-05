import 'package:conversor_unidades/extensions/time/day_to_hour_extension.dart';
import 'package:conversor_unidades/extensions/time/year_to_day_extension.dart';
import 'package:conversor_unidades/units/time/hour_unit.dart';
import 'package:conversor_unidades/units/time/year_unit.dart';

extension YearToHourExtension on YearUnit {
  HourUnit toHour() {
    return toDay().toHour();
  }
}
