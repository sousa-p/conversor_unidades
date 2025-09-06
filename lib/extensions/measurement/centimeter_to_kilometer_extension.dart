import 'package:conversor_unidades/extensions/measurement/cetimenter_to_meter_extension.dart';
import 'package:conversor_unidades/units/measurement/centimenter_unit.dart';
import 'package:conversor_unidades/units/measurement/kilometer_unit.dart';

extension CentimeterToMileExtension on CentimenterUnit {
  KilometerUnit toKilometer() {
    return toMeter().toKilometer();
  }
}
