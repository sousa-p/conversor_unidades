import 'package:conversor_unidades/data/extensions/measurement/kilometer/kilometer_to_meter_extension.dart';
import 'package:conversor_unidades/data/extensions/measurement/meter/meter_to_mile_extension.dart';
import 'package:conversor_unidades/domain/units/measurement/kilometer_unit.dart';
import 'package:conversor_unidades/domain/units/measurement/mile_unit.dart';

extension KilometerToMeterExtension on KilometerUnit {
  MileUnit toMile() {
    return toMeter().toMile();
  }
}
