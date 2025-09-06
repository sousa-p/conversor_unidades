import 'package:conversor_unidades/data/extensions/time/second/second_to_day_extension.dart';
import 'package:conversor_unidades/data/extensions/time/second/second_to_hour_extension.dart';
import 'package:conversor_unidades/data/extensions/time/second/second_to_minute_extension.dart';
import 'package:conversor_unidades/data/extensions/time/second/second_to_month_extension.dart';
import 'package:conversor_unidades/data/extensions/time/second/second_to_year_extension.dart';
import 'package:conversor_unidades/domain/interfaces/unit_interface.dart';
import 'package:conversor_unidades/domain/units/time/day_unit.dart';
import 'package:conversor_unidades/domain/units/time/hour_unit.dart';
import 'package:conversor_unidades/domain/units/time/minute_unit.dart';
import 'package:conversor_unidades/domain/units/time/month_unit.dart';
import 'package:conversor_unidades/domain/units/time/year_unit.dart';

class SecondUnit extends Unit {
  SecondUnit(super.value);

  @override
  Map<Unit Function(double), Unit Function()> get converters => {
        MinuteUnit.new: toMinute,
        DayUnit.new: toDay,
        MonthUnit.new: toMonth,
        HourUnit.new: toHour,
        YearUnit.new: toYear,
      };
}
