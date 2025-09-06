import 'package:conversor_unidades/extensions/measurement/meter_to_kilometer_extension.dart';
import 'package:conversor_unidades/extensions/measurement/mile_to_meter_extension.dart';
import 'package:conversor_unidades/units/measurement/kilometer_unit.dart';
import 'package:conversor_unidades/units/measurement/mile_unit.dart';

extension MileToKilometerExtension on MileUnit {
  KilometerUnit toKilometer() {
    return toMeter().toKilometer();
  }
}
