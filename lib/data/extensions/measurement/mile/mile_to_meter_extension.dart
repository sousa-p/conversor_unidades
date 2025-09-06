import 'package:conversor_unidades/domain/units/measurement/meter_unit.dart';
import 'package:conversor_unidades/domain/units/measurement/mile_unit.dart';

extension MileToMeterExtension on MileUnit {
  MeterUnit toMeter() {
    final conversionResult = value * MeterUnit.perMile;
    return MeterUnit(conversionResult);
  }
}
