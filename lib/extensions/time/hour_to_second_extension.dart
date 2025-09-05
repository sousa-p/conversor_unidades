import 'package:conversor_unidades/extensions/time/hour_to_minute_extension.dart';
import 'package:conversor_unidades/extensions/time/minute_to_second_extension.dart';
import 'package:conversor_unidades/units/time/hour_unit.dart';
import 'package:conversor_unidades/units/time/second_unit.dart';

extension HourToSecondExtension on HourUnit {
  SecondUnit toSecond() {
    return toMinute().toSecond();
  }
}
