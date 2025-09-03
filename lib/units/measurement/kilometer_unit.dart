import 'package:conversor_unidades/interfaces/unit_interface.dart';

class KilometerUnit extends Unit {
  KilometerUnit(super.value);

  @override
  // TODO: implement converters
  Map<Type, Unit Function()> get converters => throw UnimplementedError();
}
