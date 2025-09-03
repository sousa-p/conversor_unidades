import 'package:conversor_unidades/interfaces/unit_interface.dart';

class HourUnit extends Unit {
  HourUnit(super.value);

  @override
  // TODO: implement converters
  Map<Type, Unit Function()> get converters => throw UnimplementedError();
}
