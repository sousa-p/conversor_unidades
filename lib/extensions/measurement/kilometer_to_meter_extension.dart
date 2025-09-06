import 'package:conversor_unidades/units/measurement/kilometer_unit.dart';
import 'package:conversor_unidades/units/measurement/meter_unit.dart';

extension KilometerToMeterExtension on KilometerUnit {
  MeterUnit toMeter() {
    final conversionResult = value * 1000;
    return MeterUnit(conversionResult);
  }
}
