import 'package:conversor_unidades/extensions/measurement/cetimenter_to_meter_extension.dart';
import 'package:conversor_unidades/units/measurement/centimenter_unit.dart';
import 'package:conversor_unidades/units/measurement/mile_unit.dart';

extension CentimeterToMileExtension on CentimenterUnit {
  MileUnit toMile() {
    return toMeter().toMile();
  }
}
