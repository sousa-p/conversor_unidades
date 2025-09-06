import 'package:conversor_unidades/data/extensions/time/minute/minute_to_hour_extension.dart';
import 'package:conversor_unidades/data/extensions/time/second/second_to_minute_extension.dart';
import 'package:conversor_unidades/domain/units/time/hour_unit.dart';
import 'package:conversor_unidades/domain/units/time/second_unit.dart';

extension SecondToHourExtension on SecondUnit {
  HourUnit toHour() {
    return toMinute().toHour();
  }
}
