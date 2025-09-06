import 'package:conversor_unidades/domain/units/measurement/kilometer_unit.dart';
import 'package:conversor_unidades/domain/units/measurement/meter_unit.dart';

extension KilometerToMeterExtension on KilometerUnit {
  MeterUnit toMeter() {
    final conversionResult = value * 1000;
    return MeterUnit(conversionResult);
  }
}
