import 'package:conversor_unidades/domain/units/measurement/centimenter_unit.dart';
import 'package:conversor_unidades/domain/units/measurement/meter_unit.dart';

extension MeterToCentimeterExtension on MeterUnit {
  CentimeterUnit toCentimeter() {
    final conversionResult = value * 100;
    return CentimeterUnit(conversionResult);
  }
}
