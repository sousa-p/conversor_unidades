import 'package:conversor_unidades/domain/units/temperature/celsius_unit.dart';
import 'package:conversor_unidades/domain/units/temperature/kelvin_unit.dart';

extension CelsiusToKelvinExtension on CelsiusUnit {
  KelvinUnit toKelvin() {
    final conversionResult = value + KelvinUnit.absoluteZero;
    return KelvinUnit(conversionResult);
  }
}
