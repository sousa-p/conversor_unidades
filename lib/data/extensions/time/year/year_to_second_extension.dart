import 'package:conversor_unidades/data/extensions/time/minute/minute_to_second_extension.dart';
import 'package:conversor_unidades/data/extensions/time/year/year_to_minute_extension.dart';
import 'package:conversor_unidades/domain/units/time/second_unit.dart';
import 'package:conversor_unidades/domain/units/time/year_unit.dart';

extension YearToSecondExtension on YearUnit {
  SecondUnit toSecond() {
    return toMinute().toSecond();
  }
}
