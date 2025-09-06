import 'package:conversor_unidades/domain/units/measurement/inch_unit.dart';
import 'package:conversor_unidades/domain/units/measurement/centimenter_unit.dart';

extension InchToCentimeterExtension on InchUnit {
  CentimeterUnit toCentimeter() {
    final conversionResult = value * 2.54;
    return CentimeterUnit(conversionResult);
  }
}
