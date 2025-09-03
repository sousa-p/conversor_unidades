abstract class Unit {
  Unit(this.value);
  final double value;

  Map<Type, Unit Function()> get converters;

  Unit convert(Type unit) {
    final converter = converters[unit];

    if (converter == null) throw UnsupportedError('Conversion not supported');

    return converter();
  }
}
