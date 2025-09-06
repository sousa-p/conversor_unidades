import 'package:conversor_unidades/data/extensions/time/day/day_to_year_extension.dart';
import 'package:conversor_unidades/data/extensions/time/year/year_to_month_extension.dart';
import 'package:conversor_unidades/domain/units/time/day_unit.dart';
import 'package:conversor_unidades/domain/units/time/month_unit.dart';

extension DayToMonthExtension on DayUnit {
  MonthUnit toMonth() {
    return toYear().toMonth();
  }
}
