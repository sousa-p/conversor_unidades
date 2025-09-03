import 'package:conversor_unidades/units/temperature/celsius_unit.dart';
import 'package:conversor_unidades/units/temperature/kelvin_unit.dart';

extension KelvinToCelsiusExtension on KelvinUnit {
  CelsiusUnit toCelsius() {
    final conversionResult = value - KelvinUnit.absoluteZero;
    return CelsiusUnit(conversionResult);
  }
}
