import 'package:conversor_unidades/data/extensions/measurement/meter/meter_to_kilometer_extension.dart';
import 'package:conversor_unidades/data/extensions/measurement/mile/mile_to_meter_extension.dart';
import 'package:conversor_unidades/domain/units/measurement/kilometer_unit.dart';
import 'package:conversor_unidades/domain/units/measurement/mile_unit.dart';

extension MileToKilometerExtension on MileUnit {
  KilometerUnit toKilometer() {
    return toMeter().toKilometer();
  }
}
