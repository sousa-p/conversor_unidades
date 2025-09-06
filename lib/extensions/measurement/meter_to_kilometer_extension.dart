import 'package:conversor_unidades/units/measurement/kilometer_unit.dart';
import 'package:conversor_unidades/units/measurement/meter_unit.dart';

extension MeterToKilometerExtension on MeterUnit {
  KilometerUnit toKilometer() {
    final conversionResult = value / 1000;
    return KilometerUnit(conversionResult);
  }
}
