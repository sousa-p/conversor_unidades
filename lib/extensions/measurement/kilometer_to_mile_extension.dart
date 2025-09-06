import 'package:conversor_unidades/extensions/measurement/kilometer_to_meter_extension.dart';
import 'package:conversor_unidades/extensions/measurement/meter_to_mile_extension.dart';
import 'package:conversor_unidades/units/measurement/kilometer_unit.dart';
import 'package:conversor_unidades/units/measurement/mile_unit.dart';

extension KilometerToMeterExtension on KilometerUnit {
  MileUnit toMile() {
    return toMeter().toMile();
  }
}
