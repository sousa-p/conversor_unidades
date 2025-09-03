import 'package:flutter_test/flutter_test.dart';
import 'package:conversor_unidades/units/temperature/celsius_unit.dart';
import 'package:conversor_unidades/units/temperature/kelvin_unit.dart';

void main() {
  group('CelsiusUnit converters', () {
    test('should convert Celsius to Kelvin using converters map', () {
      final celsius = CelsiusUnit(0);

      final converter = celsius.converters[KelvinUnit];
      expect(
        converter,
        isNotNull,
        reason: 'Converter for KelvinUnit should exist',
      );

      final kelvin = converter!();

      expect(kelvin, isA<KelvinUnit>());
      expect(kelvin.value, closeTo(273.15, 0.0001));
    });

    test('should not have unexpected converters', () {
      final celsius = CelsiusUnit(0);
      expect(celsius.converters.containsKey(KelvinUnit), true);
    });
  });
}
