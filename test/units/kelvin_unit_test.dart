import 'package:flutter_test/flutter_test.dart';
import 'package:conversor_unidades/units/temperature/kelvin_unit.dart';
import 'package:conversor_unidades/units/temperature/celsius_unit.dart';

void main() {
  group('KelvinUnit converters', () {
    test('should convert Kelvin to Celsius using converters map', () {
      final kelvin = KelvinUnit(273.15);

      final converter = kelvin.converters[CelsiusUnit];
      expect(
        converter,
        isNotNull,
        reason: 'Converter for CelsiusUnit should exist',
      );

      final celsius = converter!();

      expect(celsius, isA<CelsiusUnit>());
      expect(celsius.value, closeTo(0.0, 0.0001));
    });

    test('should not have unexpected converters', () {
      final kelvin = KelvinUnit(273.15);
      expect(kelvin.converters.containsKey(CelsiusUnit), true);
    });
  });
}
