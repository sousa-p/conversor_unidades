import 'package:conversor_unidades/data/extensions/measurement/inch/inch_to_centimeter_extension.dart';
import 'package:conversor_unidades/data/extensions/measurement/inch/inch_to_kilometer_extension.dart';
import 'package:conversor_unidades/data/extensions/measurement/inch/inch_to_meter_extension.dart';
import 'package:conversor_unidades/data/extensions/measurement/inch/inch_to_mile_extension.dart';
import 'package:conversor_unidades/domain/interfaces/unit_interface.dart';
import 'package:conversor_unidades/domain/units/measurement/centimenter_unit.dart';
import 'package:conversor_unidades/domain/units/measurement/kilometer_unit.dart';
import 'package:conversor_unidades/domain/units/measurement/meter_unit.dart';
import 'package:conversor_unidades/domain/units/measurement/mile_unit.dart';

class InchUnit extends Unit {
  InchUnit(super.value);

  @override
  Map<Unit Function(double), Unit Function()> get converters => {
        CentimeterUnit.new: toCentimeter,
        KilometerUnit.new: toKilometer,
        MeterUnit.new: toMeter,
        MileUnit.new: toMile,
      };
}
