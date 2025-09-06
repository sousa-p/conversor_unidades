import 'package:conversor_unidades/units/measurement/meter_unit.dart';
import 'package:conversor_unidades/units/measurement/mile_unit.dart';

extension MeterToMileExtension on MeterUnit {
  MileUnit toMile() {
    final conversionResult = value / MeterUnit.perMile;
    return MileUnit(conversionResult);
  }
}
