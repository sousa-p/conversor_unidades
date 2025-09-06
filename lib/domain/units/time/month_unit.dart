import 'package:conversor_unidades/data/extensions/time/month/month_to_day_extension.dart';
import 'package:conversor_unidades/data/extensions/time/month/month_to_hour_extension.dart';
import 'package:conversor_unidades/data/extensions/time/month/month_to_minute_extension.dart';
import 'package:conversor_unidades/data/extensions/time/month/month_to_second_extension.dart';
import 'package:conversor_unidades/data/extensions/time/month/month_to_year_extension.dart';
import 'package:conversor_unidades/domain/interfaces/unit_interface.dart';
import 'package:conversor_unidades/domain/units/time/day_unit.dart';
import 'package:conversor_unidades/domain/units/time/hour_unit.dart';
import 'package:conversor_unidades/domain/units/time/minute_unit.dart';
import 'package:conversor_unidades/domain/units/time/second_unit.dart';
import 'package:conversor_unidades/domain/units/time/year_unit.dart';

class MonthUnit extends Unit {
  MonthUnit(super.value);

  @override
  Map<Unit Function(double), Unit Function()> get converters => {
        SecondUnit.new: toSecond,
        MinuteUnit.new: toMinute,
        DayUnit.new: toDay,
        HourUnit.new: toHour,
        YearUnit.new: toYear,
      };
}
