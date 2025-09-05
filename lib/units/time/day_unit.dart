import 'package:conversor_unidades/interfaces/unit_interface.dart';

class DayUnit extends Unit {
  DayUnit(super.value);

  @override
  Map<Type, Unit Function()> get converters => throw UnimplementedError();
}
