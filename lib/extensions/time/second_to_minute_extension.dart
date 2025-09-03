import 'package:conversor_unidades/units/time/minute_unit.dart';
import 'package:conversor_unidades/units/time/second_unit.dart';

extension SecondToMinuteExtension on SecondUnit {
  MinuteUnit toMinute() {
    final conversionResult = value / 60;
    return MinuteUnit(conversionResult);
  }
}
