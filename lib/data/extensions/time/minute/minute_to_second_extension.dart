import 'package:conversor_unidades/domain/units/time/minute_unit.dart';
import 'package:conversor_unidades/domain/units/time/second_unit.dart';

extension MinuteToSecondExtension on MinuteUnit {
  SecondUnit toSecond() {
    final conversionResult = value * 60;
    return SecondUnit(conversionResult);
  }
}
