import 'package:conversor_unidades/extensions/temperature/kelvin_to_celsius_extension.dart';
import 'package:conversor_unidades/interfaces/unit_interface.dart';
import 'package:conversor_unidades/units/temperature/celsius_unit.dart';

class KelvinUnit extends Unit {
  static const double absoluteZero = 273.15;

  KelvinUnit(super.value);

  @override
  Map<Type, Unit Function()> get converters => {
        CelsiusUnit: toCelsius,
      };
}
