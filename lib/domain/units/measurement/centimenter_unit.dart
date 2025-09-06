import 'package:conversor_unidades/data/extensions/measurement/centimeter/centimeter_to_inch_extension.dart';
import 'package:conversor_unidades/data/extensions/measurement/centimeter/centimeter_to_kilometer_extension.dart';
import 'package:conversor_unidades/data/extensions/measurement/centimeter/centimeter_to_mile_extension.dart';
import 'package:conversor_unidades/data/extensions/measurement/centimeter/cetimenter_to_meter_extension.dart';
import 'package:conversor_unidades/domain/interfaces/unit_interface.dart';
import 'package:conversor_unidades/domain/units/measurement/inch_unit.dart';
import 'package:conversor_unidades/domain/units/measurement/kilometer_unit.dart';
import 'package:conversor_unidades/domain/units/measurement/meter_unit.dart';
import 'package:conversor_unidades/domain/units/measurement/mile_unit.dart';

class CentimeterUnit extends Unit {
  CentimeterUnit(super.value);

  @override
  Map<Unit Function(double), Unit Function()> get converters => {
        KilometerUnit.new: toKilometer,
        MeterUnit.new: toMeter,
        MileUnit.new: toMile,
        InchUnit.new: toInch,
      };
}
