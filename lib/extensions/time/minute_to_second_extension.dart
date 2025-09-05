import 'package:conversor_unidades/units/time/minute_unit.dart';
import 'package:conversor_unidades/units/time/second_unit.dart';

extension MinuteToSecondExtension on MinuteUnit {
  SecondUnit toSecond() {
    final conversionResult = value * 60;
    return SecondUnit(conversionResult);
  }
}
