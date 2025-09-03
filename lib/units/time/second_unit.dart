import 'package:conversor_unidades/interfaces/unit_interface.dart';

class SecondUnit extends Unit {
  SecondUnit(super.value);

  @override
  Map<Type, Unit Function()> get converters => throw UnimplementedError();
}
