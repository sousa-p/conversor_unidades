import 'package:conversor_unidades/data/extensions/measurement/centimeter/centimeter_to_inch_extension.dart';
import 'package:conversor_unidades/data/extensions/measurement/meter/meter_to_centimeter_extension.dart';
import 'package:conversor_unidades/domain/units/measurement/inch_unit.dart';
import 'package:conversor_unidades/domain/units/measurement/meter_unit.dart';

extension MeterToInchExtension on MeterUnit {
  InchUnit toInch() {
    return toCentimeter().toInch();
  }
}
