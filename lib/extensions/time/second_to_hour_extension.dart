import 'package:conversor_unidades/extensions/time/minute_to_hour_extension.dart';
import 'package:conversor_unidades/extensions/time/second_to_minute_extension.dart';
import 'package:conversor_unidades/units/time/hour_unit.dart';
import 'package:conversor_unidades/units/time/second_unit.dart';

extension SecondToHourExtension on SecondUnit {
  HourUnit toHour() {
    return toMinute().toHour();
  }
}
