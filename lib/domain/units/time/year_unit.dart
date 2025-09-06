import 'package:conversor_unidades/data/extensions/time/year/year_to_day_extension.dart';
import 'package:conversor_unidades/data/extensions/time/year/year_to_hour_extension.dart';
import 'package:conversor_unidades/data/extensions/time/year/year_to_minute_extension.dart';
import 'package:conversor_unidades/data/extensions/time/year/year_to_month_extension.dart';
import 'package:conversor_unidades/data/extensions/time/year/year_to_second_extension.dart';
import 'package:conversor_unidades/domain/interfaces/unit_interface.dart';
import 'package:conversor_unidades/domain/units/time/day_unit.dart';
import 'package:conversor_unidades/domain/units/time/hour_unit.dart';
import 'package:conversor_unidades/domain/units/time/minute_unit.dart';
import 'package:conversor_unidades/domain/units/time/month_unit.dart';
import 'package:conversor_unidades/domain/units/time/second_unit.dart';

class YearUnit extends Unit {
  YearUnit(super.value);

  @override
  Map<Unit Function(double), Unit Function()> get converters => {
        SecondUnit.new: toSecond,
        MinuteUnit.new: toMinute,
        HourUnit.new: toHour,
        DayUnit.new: toDay,
        MonthUnit.new: toMonth,
      };
}
