import 'package:conversor_unidades/data/extensions/time/minute/minute_to_day_extension.dart';
import 'package:conversor_unidades/data/extensions/time/minute/minute_to_hour_extension.dart';
import 'package:conversor_unidades/data/extensions/time/minute/minute_to_month_extension.dart';
import 'package:conversor_unidades/data/extensions/time/minute/minute_to_second_extension.dart';
import 'package:conversor_unidades/data/extensions/time/minute/minute_to_year_extension.dart';
import 'package:conversor_unidades/domain/interfaces/unit_interface.dart';
import 'package:conversor_unidades/domain/units/time/day_unit.dart';
import 'package:conversor_unidades/domain/units/time/hour_unit.dart';
import 'package:conversor_unidades/domain/units/time/month_unit.dart';
import 'package:conversor_unidades/domain/units/time/second_unit.dart';
import 'package:conversor_unidades/domain/units/time/year_unit.dart';

class MinuteUnit extends Unit {
  MinuteUnit(super.value);

  @override
  Map<Unit Function(double), Unit Function()> get converters => {
        SecondUnit.new: toSecond,
        DayUnit.new: toDay,
        HourUnit.new: toHour,
        MonthUnit.new: toMonth,
        YearUnit.new: toYear,
      };
}
