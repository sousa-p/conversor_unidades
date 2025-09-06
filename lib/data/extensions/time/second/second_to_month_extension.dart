import 'package:conversor_unidades/data/extensions/time/minute/minute_to_month_extension.dart';
import 'package:conversor_unidades/data/extensions/time/second/second_to_minute_extension.dart';
import 'package:conversor_unidades/domain/units/time/month_unit.dart';
import 'package:conversor_unidades/domain/units/time/second_unit.dart';

extension SecondToMonthExtension on SecondUnit {
  MonthUnit toMonth() {
    return toMinute().toMonth();
  }
}
