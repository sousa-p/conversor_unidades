import 'package:conversor_unidades/data/extensions/temperature/kevin/kelvin_to_celsius_extension.dart';
import 'package:conversor_unidades/domain/interfaces/unit_interface.dart';
import 'package:conversor_unidades/domain/units/temperature/celsius_unit.dart';

class KelvinUnit extends Unit {
  static const double absoluteZero = 273.15;

  KelvinUnit(super.value);

  @override
  Map<Unit Function(double), Unit Function()> get converters => {
        CelsiusUnit.new: toCelsius,
      };
}
