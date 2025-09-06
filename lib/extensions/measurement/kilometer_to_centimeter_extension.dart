import 'package:conversor_unidades/extensions/measurement/kilometer_to_meter_extension.dart';
import 'package:conversor_unidades/extensions/measurement/meter_to_centimeter_extension.dart';
import 'package:conversor_unidades/units/measurement/centimenter_unit.dart';
import 'package:conversor_unidades/units/measurement/kilometer_unit.dart';

extension KilometerToMeterExtension on KilometerUnit {
  CentimenterUnit toCentimenter() {
    return toMeter().toCentimeter();
  }
}
