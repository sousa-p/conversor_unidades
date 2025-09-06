import 'package:conversor_unidades/data/extensions/measurement/kilometer/kilometer_to_meter_extension.dart';
import 'package:conversor_unidades/data/extensions/measurement/meter/meter_to_centimeter_extension.dart';
import 'package:conversor_unidades/domain/units/measurement/centimenter_unit.dart';
import 'package:conversor_unidades/domain/units/measurement/kilometer_unit.dart';

extension KilometerToMeterExtension on KilometerUnit {
  CentimeterUnit toCentimeter() {
    return toMeter().toCentimeter();
  }
}
