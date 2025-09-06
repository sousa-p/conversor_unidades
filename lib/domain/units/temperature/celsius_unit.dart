import 'package:conversor_unidades/data/extensions/temperature/celsius/celsius_to_kelvin_extension.dart';
import 'package:conversor_unidades/domain/interfaces/unit_interface.dart';
import 'package:conversor_unidades/domain/units/temperature/kelvin_unit.dart';

class CelsiusUnit extends Unit {
  CelsiusUnit(super.value);

  @override
  Map<Unit Function(double), Unit Function()> get converters => {
        KelvinUnit.new: toKelvin,
      };
}
