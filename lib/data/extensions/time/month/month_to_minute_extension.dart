import 'package:conversor_unidades/data/extensions/time/hour/hour_to_minute_extension.dart';
import 'package:conversor_unidades/data/extensions/time/month/month_to_hour_extension.dart';
import 'package:conversor_unidades/domain/units/time/minute_unit.dart';
import 'package:conversor_unidades/domain/units/time/month_unit.dart';

extension MonthToMinuteExtension on MonthUnit {
  MinuteUnit toMinute() {
    return toHour().toMinute();
  }
}
