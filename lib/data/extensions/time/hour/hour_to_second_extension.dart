import 'package:conversor_unidades/data/extensions/time/hour/hour_to_minute_extension.dart';
import 'package:conversor_unidades/data/extensions/time/minute/minute_to_second_extension.dart';
import 'package:conversor_unidades/domain/units/time/hour_unit.dart';
import 'package:conversor_unidades/domain/units/time/second_unit.dart';

extension HourToSecondExtension on HourUnit {
  SecondUnit toSecond() {
    return toMinute().toSecond();
  }
}
