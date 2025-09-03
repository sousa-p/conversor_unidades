import 'package:conversor_unidades/interfaces/unit_interface.dart';

class YearUnit extends Unit {
  YearUnit(super.value);

  @override
  Map<Type, Unit Function()> get converters => throw UnimplementedError();
}
