import 'package:conversor_unidades/domain/units/measurement/kilometer_unit.dart';
import 'package:conversor_unidades/domain/units/measurement/meter_unit.dart';

extension MeterToKilometerExtension on MeterUnit {
  KilometerUnit toKilometer() {
    final conversionResult = value / 1000;
    return KilometerUnit(conversionResult);
  }
}
