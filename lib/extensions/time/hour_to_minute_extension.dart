import 'package:conversor_unidades/units/time/hour_unit.dart';
import 'package:conversor_unidades/units/time/minute_unit.dart';

extension HourToMinuteExtension on HourUnit {
  MinuteUnit toMinute() {
    final conversionResult = value * 60;
    return MinuteUnit(conversionResult);
  }
}
