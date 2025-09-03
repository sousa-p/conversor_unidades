import 'package:conversor_unidades/interfaces/unit_interface.dart';

class MonthUnit extends Unit {
  MonthUnit(super.value);

  @override
  Map<Type, Unit Function()> get converters => throw UnimplementedError();
}
