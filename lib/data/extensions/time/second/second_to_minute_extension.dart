import 'package:conversor_unidades/domain/units/time/minute_unit.dart';
import 'package:conversor_unidades/domain/units/time/second_unit.dart';

extension SecondToMinuteExtension on SecondUnit {
  MinuteUnit toMinute() {
    final conversionResult = value / 60;
    return MinuteUnit(conversionResult);
  }
}
