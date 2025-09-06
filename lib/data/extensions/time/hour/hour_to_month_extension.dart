import 'package:conversor_unidades/data/extensions/time/day/day_to_month_extension.dart';
import 'package:conversor_unidades/data/extensions/time/hour/hour_to_day_extension.dart';
import 'package:conversor_unidades/domain/units/time/hour_unit.dart';
import 'package:conversor_unidades/domain/units/time/month_unit.dart';

extension HourToMonthExtension on HourUnit {
  MonthUnit toMonth() {
    return toDay().toMonth();
  }
}
