import 'package:conversor_unidades/domain/units/measurement/centimenter_unit.dart';
import 'package:conversor_unidades/domain/units/measurement/inch_unit.dart';

extension CentimeterToInchExtension on CentimeterUnit {
  InchUnit toInch() {
    final conversionResult = value / 2.54;
    return InchUnit(conversionResult);
  }
}
