import 'package:conversor_unidades/units/time/hour_unit.dart';
import 'package:conversor_unidades/units/time/minute_unit.dart';

extension MinuteToHourExtension on MinuteUnit {
  HourUnit toHour() {
    final conversionResult = value / 60;
    return HourUnit(conversionResult);
  }
}
