import 'package:conversor_unidades/data/extensions/measurement/mile/mile_to_centimeter_extension.dart';
import 'package:conversor_unidades/data/extensions/measurement/mile/mile_to_inch_extension.dart';
import 'package:conversor_unidades/data/extensions/measurement/mile/mile_to_kilometer_extension.dart';
import 'package:conversor_unidades/data/extensions/measurement/mile/mile_to_meter_extension.dart';
import 'package:conversor_unidades/domain/interfaces/unit_interface.dart';
import 'package:conversor_unidades/domain/units/measurement/centimenter_unit.dart';
import 'package:conversor_unidades/domain/units/measurement/inch_unit.dart';
import 'package:conversor_unidades/domain/units/measurement/kilometer_unit.dart';
import 'package:conversor_unidades/domain/units/measurement/meter_unit.dart';

class MileUnit extends Unit {
  MileUnit(super.value);

  @override
  Map<Unit Function(double), Unit Function()> get converters => {
        CentimeterUnit.new: toCentimeter,
        MeterUnit.new: toMeter,
        KilometerUnit.new: toKilometer,
        InchUnit.new: toInch,
      };
}
