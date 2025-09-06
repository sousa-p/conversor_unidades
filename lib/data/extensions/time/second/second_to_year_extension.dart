import 'package:conversor_unidades/data/extensions/time/day/day_to_year_extension.dart';
import 'package:conversor_unidades/data/extensions/time/second/second_to_day_extension.dart';
import 'package:conversor_unidades/domain/units/time/second_unit.dart';
import 'package:conversor_unidades/domain/units/time/year_unit.dart';

extension SecondToYearExtension on SecondUnit {
  YearUnit toYear() {
    return toDay().toYear();
  }
}
