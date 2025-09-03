import 'package:conversor_unidades/interfaces/unit_interface.dart';

class MinuteUnit extends Unit {
  MinuteUnit(super.value);

  @override
  Map<Type, Unit Function()> get converters => throw UnimplementedError();
}
