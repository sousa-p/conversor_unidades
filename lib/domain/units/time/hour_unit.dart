import 'package:conversor_unidades/data/extensions/time/hour/hour_to_day_extension.dart';
import 'package:conversor_unidades/data/extensions/time/hour/hour_to_minute_extension.dart';
import 'package:conversor_unidades/data/extensions/time/hour/hour_to_month_extension.dart';
import 'package:conversor_unidades/data/extensions/time/hour/hour_to_second_extension.dart';
import 'package:conversor_unidades/data/extensions/time/hour/hour_to_year_extension.dart';
import 'package:conversor_unidades/domain/interfaces/unit_interface.dart';
import 'package:conversor_unidades/domain/units/time/day_unit.dart';
import 'package:conversor_unidades/domain/units/time/minute_unit.dart';
import 'package:conversor_unidades/domain/units/time/month_unit.dart';
import 'package:conversor_unidades/domain/units/time/second_unit.dart';
import 'package:conversor_unidades/domain/units/time/year_unit.dart';

class HourUnit extends Unit {
  HourUnit(super.value);

  @override
  Map<Unit Function(double), Unit Function()> get converters => {
        SecondUnit.new: toSecond,
        MinuteUnit.new: toMinute,
        DayUnit.new: toDay,
        MonthUnit.new: toMonth,
        YearUnit.new: toYear,
      };
}
