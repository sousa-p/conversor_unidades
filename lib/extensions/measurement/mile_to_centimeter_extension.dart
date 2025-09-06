import 'package:conversor_unidades/extensions/measurement/meter_to_centimeter_extension.dart';
import 'package:conversor_unidades/extensions/measurement/mile_to_meter_extension.dart';
import 'package:conversor_unidades/units/measurement/centimenter_unit.dart';
import 'package:conversor_unidades/units/measurement/mile_unit.dart';

extension MileToCentimeterExtension on MileUnit {
  CentimenterUnit toCentimeter() {
    return toMeter().toCentimeter();
  }
}
