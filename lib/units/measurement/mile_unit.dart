import 'package:conversor_unidades/interfaces/unit_interface.dart';

class MileUnit extends Unit {
  MileUnit(super.value);

  @override
  Map<Type, Unit Function()> get converters => throw UnimplementedError();
}
