import 'package:conversor_unidades/data/extensions/measurement/centimeter/centimeter_to_inch_extension.dart';
import 'package:conversor_unidades/data/extensions/measurement/mile/mile_to_centimeter_extension.dart';
import 'package:conversor_unidades/domain/units/measurement/inch_unit.dart';
import 'package:conversor_unidades/domain/units/measurement/mile_unit.dart';

extension MileToInchExtension on MileUnit {
  InchUnit toInch() {
    return toCentimeter().toInch();
  }
}
