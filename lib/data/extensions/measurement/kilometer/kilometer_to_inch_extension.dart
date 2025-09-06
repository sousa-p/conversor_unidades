import 'package:conversor_unidades/data/extensions/measurement/centimeter/centimeter_to_inch_extension.dart';
import 'package:conversor_unidades/data/extensions/measurement/kilometer/kilometer_to_centimeter_extension.dart';
import 'package:conversor_unidades/domain/units/measurement/inch_unit.dart';
import 'package:conversor_unidades/domain/units/measurement/kilometer_unit.dart';

extension KilometerToInchExtension on KilometerUnit {
  InchUnit toInch() {
    return toCentimeter().toInch();
  }
}
