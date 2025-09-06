abstract class Unit {
  Unit(this.value);
  final double value;

  Map<Unit Function(double), Unit Function()> get converters;

  Unit convert(Unit Function(double) unitConstructor) {
    final converter = converters[unitConstructor];

    if (converter == null) throw UnsupportedError('Conversion not supported');

    return converter();
  }
}
