import 'package:conversor_unidades/units/measurement/centimenter_unit.dart';
import 'package:conversor_unidades/units/measurement/meter_unit.dart';

extension MeterToCentimeterExtension on MeterUnit {
  CentimenterUnit toCentimeter() {
    final conversionResult = value * 100;
    return CentimenterUnit(conversionResult);
  }
}
