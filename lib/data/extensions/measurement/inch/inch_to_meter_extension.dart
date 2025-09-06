
import 'package:conversor_unidades/data/extensions/measurement/centimeter/cetimenter_to_meter_extension.dart';
import 'package:conversor_unidades/data/extensions/measurement/inch/inch_to_centimeter_extension.dart';
import 'package:conversor_unidades/domain/units/measurement/inch_unit.dart';
import 'package:conversor_unidades/domain/units/measurement/meter_unit.dart';

extension InchToMeterExtension on InchUnit {
  MeterUnit toMeter() {
    return toCentimeter().toMeter();
  }
}
