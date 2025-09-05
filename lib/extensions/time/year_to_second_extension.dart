import 'package:conversor_unidades/extensions/time/day_to_hour_extension.dart';
import 'package:conversor_unidades/extensions/time/hour_to_minute_extension.dart';
import 'package:conversor_unidades/extensions/time/minute_to_second_extension.dart';
import 'package:conversor_unidades/extensions/time/year_to_day_extension.dart';
import 'package:conversor_unidades/units/time/second_unit.dart';
import 'package:conversor_unidades/units/time/year_unit.dart';

extension YearToSecondExtension on YearUnit {
  SecondUnit toSecond() {
    return toDay().toHour().toMinute().toSecond();
  }
}
