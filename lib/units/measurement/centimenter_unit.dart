import 'package:conversor_unidades/interfaces/unit_interface.dart';

class CentimenterUnit extends Unit {
  CentimenterUnit(super.value);

  @override
  Map<Type, Unit Function()> get converters => throw UnimplementedError();
}
