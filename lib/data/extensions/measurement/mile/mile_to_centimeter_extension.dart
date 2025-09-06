import 'package:conversor_unidades/data/extensions/measurement/meter/meter_to_centimeter_extension.dart';
import 'package:conversor_unidades/data/extensions/measurement/mile/mile_to_meter_extension.dart';
import 'package:conversor_unidades/domain/units/measurement/centimenter_unit.dart';
import 'package:conversor_unidades/domain/units/measurement/mile_unit.dart';

extension MileToCentimeterExtension on MileUnit {
  CentimeterUnit toCentimeter() {
    return toMeter().toCentimeter();
  }
}
