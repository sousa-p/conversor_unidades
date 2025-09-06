import 'package:conversor_unidades/domain/units/measurement/centimenter_unit.dart';
import 'package:conversor_unidades/domain/units/measurement/meter_unit.dart';

extension CetimenterToMeterExtension on CentimeterUnit {
  MeterUnit toMeter() {
    final conversionResult = value / 100;
    return MeterUnit(conversionResult);
  }
}
