import 'package:conversor_unidades/interfaces/unit_interface.dart';

class MeterUnit extends Unit {
  MeterUnit(super.value);
  
  static const double perMile = 1609.344;

  @override
  // TODO: implement converters
  Map<Type, Unit Function()> get converters => throw UnimplementedError();
}
