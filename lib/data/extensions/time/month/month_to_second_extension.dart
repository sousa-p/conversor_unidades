import 'package:conversor_unidades/data/extensions/time/minute/minute_to_second_extension.dart';
import 'package:conversor_unidades/data/extensions/time/month/month_to_minute_extension.dart';
import 'package:conversor_unidades/domain/units/time/month_unit.dart';
import 'package:conversor_unidades/domain/units/time/second_unit.dart';

extension MonthToSecondExtension on MonthUnit {
  SecondUnit toSecond() {
    return toMinute().toSecond();
  }
}
