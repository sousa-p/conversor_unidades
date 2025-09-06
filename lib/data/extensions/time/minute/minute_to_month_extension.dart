import 'package:conversor_unidades/data/extensions/time/hour/hour_to_month_extension.dart';
import 'package:conversor_unidades/data/extensions/time/minute/minute_to_hour_extension.dart';
import 'package:conversor_unidades/domain/units/time/minute_unit.dart';
import 'package:conversor_unidades/domain/units/time/month_unit.dart';

extension MinuteToMonthExtension on MinuteUnit {
  MonthUnit toMonth() {
    return toHour().toMonth();
  }
}
