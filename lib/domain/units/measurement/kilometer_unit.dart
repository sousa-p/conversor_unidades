import 'package:conversor_unidades/data/extensions/measurement/kilometer/kilometer_to_centimeter_extension.dart';
import 'package:conversor_unidades/data/extensions/measurement/kilometer/kilometer_to_inch_extension.dart';
import 'package:conversor_unidades/data/extensions/measurement/kilometer/kilometer_to_meter_extension.dart';
import 'package:conversor_unidades/data/extensions/measurement/kilometer/kilometer_to_mile_extension.dart';
import 'package:conversor_unidades/domain/interfaces/unit_interface.dart';
import 'package:conversor_unidades/domain/units/measurement/centimenter_unit.dart';
import 'package:conversor_unidades/domain/units/measurement/inch_unit.dart';
import 'package:conversor_unidades/domain/units/measurement/meter_unit.dart';
import 'package:conversor_unidades/domain/units/measurement/mile_unit.dart';

class KilometerUnit extends Unit {
  KilometerUnit(super.value);

  @override
  Map<Unit Function(double), Unit Function()> get converters => {
        CentimeterUnit.new: toCentimeter,
        MeterUnit.new: toMeter,
        MileUnit.new: toMile,
        InchUnit.new: toInch,
      };
}
