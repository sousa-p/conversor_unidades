import 'package:conversor_unidades/data/extensions/time/day/day_to_hour_extension.dart';
import 'package:conversor_unidades/data/extensions/time/day/day_to_minute_extension.dart';
import 'package:conversor_unidades/data/extensions/time/day/day_to_month_extension.dart';
import 'package:conversor_unidades/data/extensions/time/day/day_to_second_extension.dart';
import 'package:conversor_unidades/data/extensions/time/day/day_to_year_extension.dart';
import 'package:conversor_unidades/domain/interfaces/unit_interface.dart';
import 'package:conversor_unidades/domain/units/time/hour_unit.dart';
import 'package:conversor_unidades/domain/units/time/minute_unit.dart';
import 'package:conversor_unidades/domain/units/time/month_unit.dart';
import 'package:conversor_unidades/domain/units/time/second_unit.dart';
import 'package:conversor_unidades/domain/units/time/year_unit.dart';

class DayUnit extends Unit {
  DayUnit(super.value);

  @override
  Map<Unit Function(double), Unit Function()> get converters => {
        SecondUnit.new: toSecond,
        MinuteUnit.new: toMinute,
        HourUnit.new: toHour,
        MonthUnit.new: toMonth,
        YearUnit.new: toYear,
      };
}
