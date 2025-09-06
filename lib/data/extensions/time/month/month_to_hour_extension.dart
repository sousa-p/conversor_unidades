import 'package:conversor_unidades/data/extensions/time/day/day_to_hour_extension.dart';
import 'package:conversor_unidades/data/extensions/time/month/month_to_day_extension.dart';
import 'package:conversor_unidades/domain/units/time/hour_unit.dart';
import 'package:conversor_unidades/domain/units/time/month_unit.dart';

extension MonthToHourExtension on MonthUnit {
  HourUnit toHour() {
    return toDay().toHour();
  }
}
