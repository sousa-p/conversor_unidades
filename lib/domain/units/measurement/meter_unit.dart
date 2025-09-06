import 'package:conversor_unidades/data/extensions/measurement/meter/meter_to_centimeter_extension.dart';
import 'package:conversor_unidades/data/extensions/measurement/meter/meter_to_inch_extension.dart';
import 'package:conversor_unidades/data/extensions/measurement/meter/meter_to_kilometer_extension.dart';
import 'package:conversor_unidades/data/extensions/measurement/meter/meter_to_mile_extension.dart';
import 'package:conversor_unidades/domain/interfaces/unit_interface.dart';
import 'package:conversor_unidades/domain/units/measurement/centimenter_unit.dart';
import 'package:conversor_unidades/domain/units/measurement/inch_unit.dart';
import 'package:conversor_unidades/domain/units/measurement/kilometer_unit.dart';
import 'package:conversor_unidades/domain/units/measurement/mile_unit.dart';

class MeterUnit extends Unit {
  MeterUnit(super.value);

  static const double perMile = 1609.344;

  @override
  Map<Unit Function(double), Unit Function()> get converters => {
        CentimeterUnit.new: toCentimeter,
        KilometerUnit.new: toKilometer,
        MileUnit.new: toMile,
        InchUnit.new: toInch,
      };
}
