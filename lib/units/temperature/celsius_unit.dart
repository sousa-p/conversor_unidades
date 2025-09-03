import 'package:conversor_unidades/extensions/temperature/celsius_to_kelvin_extension.dart';
import 'package:conversor_unidades/interfaces/unit_interface.dart';
import 'package:conversor_unidades/units/temperature/kelvin_unit.dart';

class CelsiusUnit extends Unit {
  CelsiusUnit(super.value);

  @override
  Map<Type, Unit Function()> get converters => {
        KelvinUnit: toKelvin,
      };
}
