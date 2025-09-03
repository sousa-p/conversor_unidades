import 'package:conversor_unidades/units/temperature/celsius_unit.dart';
import 'package:conversor_unidades/units/temperature/kelvin_unit.dart';

extension CelsiusToKelvinExtension on CelsiusUnit {
  KelvinUnit toKelvin() {
    final conversionResult = value + KelvinUnit.absoluteZero;
    return KelvinUnit(conversionResult);
  }
}
