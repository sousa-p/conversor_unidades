import 'package:conversor_unidades/units/measurement/centimenter_unit.dart';

extension CetimenterToMeterExtension on CentimenterUnit {
  CentimenterUnit toMeter() {
    final conversionResult = value / 100;
    return CentimenterUnit(conversionResult);
  }
}
