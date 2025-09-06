import 'package:conversor_unidades/data/extensions/measurement/centimeter/cetimenter_to_meter_extension.dart';
import 'package:conversor_unidades/data/extensions/measurement/meter/meter_to_kilometer_extension.dart';
import 'package:conversor_unidades/domain/units/measurement/centimenter_unit.dart';
import 'package:conversor_unidades/domain/units/measurement/kilometer_unit.dart';

extension CentimeterToMileExtension on CentimeterUnit {
  KilometerUnit toKilometer() {
    return toMeter().toKilometer();
  }
}
