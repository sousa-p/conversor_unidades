import 'package:conversor_unidades/data/extensions/time/hour/hour_to_minute_extension.dart';
import 'package:conversor_unidades/data/extensions/time/year/year_to_hour_extension.dart';
import 'package:conversor_unidades/domain/units/time/minute_unit.dart';
import 'package:conversor_unidades/domain/units/time/year_unit.dart';

extension YearToMinuteExtension on YearUnit {
  MinuteUnit toMinute() {
    return toHour().toMinute();
  }
}
