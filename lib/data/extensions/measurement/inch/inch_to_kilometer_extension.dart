import 'package:conversor_unidades/data/extensions/measurement/centimeter/centimeter_to_kilometer_extension.dart';
import 'package:conversor_unidades/data/extensions/measurement/inch/inch_to_centimeter_extension.dart';
import 'package:conversor_unidades/domain/units/measurement/inch_unit.dart';
import 'package:conversor_unidades/domain/units/measurement/kilometer_unit.dart';

extension InchToMeterExtension on InchUnit {
  KilometerUnit toKilometer() {
    return toCentimeter().toKilometer();
  }
}
