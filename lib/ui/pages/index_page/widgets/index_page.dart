import 'package:conversor_unidades/domain/interfaces/unit_interface.dart';
import 'package:conversor_unidades/domain/units/measurement/centimenter_unit.dart';
import 'package:conversor_unidades/domain/units/measurement/inch_unit.dart';
import 'package:conversor_unidades/domain/units/measurement/kilometer_unit.dart';
import 'package:conversor_unidades/domain/units/measurement/meter_unit.dart';
import 'package:conversor_unidades/domain/units/measurement/mile_unit.dart';
import 'package:conversor_unidades/domain/units/temperature/celsius_unit.dart';
import 'package:conversor_unidades/domain/units/temperature/kelvin_unit.dart';
import 'package:conversor_unidades/domain/units/time/day_unit.dart';
import 'package:conversor_unidades/domain/units/time/hour_unit.dart';
import 'package:conversor_unidades/domain/units/time/minute_unit.dart';
import 'package:conversor_unidades/domain/units/time/month_unit.dart';
import 'package:conversor_unidades/domain/units/time/second_unit.dart';
import 'package:conversor_unidades/domain/units/time/year_unit.dart';
import 'package:conversor_unidades/ui/core/components/dropdown_input_component.dart';
import 'package:conversor_unidades/ui/pages/index_page/view_model/index_view_model.dart';
import 'package:flutter/material.dart';

class IndexPage extends StatelessWidget {
  IndexPage({
    super.key,
    IndexViewModel? indexViewModel,
  }) : _indexViewModel = indexViewModel ?? IndexViewModel();
  final IndexViewModel _indexViewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conversão de unidades'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListenableBuilder(
                listenable: _indexViewModel,
                builder: (_, __) {
                  return DropdownInputComponent(
                    textFormFieldController:
                        _indexViewModel.toConvertTextEditingController,
                    value: _indexViewModel.toConvert,
                    onChangedDropDown: (constructor) {
                      _indexViewModel.changeToConvertUnit(constructor);
                    },
                    items: _dropDownToConvertItems(),
                  );
                },
              ),
              IconButton(
                onPressed: () {
                  _indexViewModel.swap();
                  _indexViewModel.convert();
                },
                icon: const Icon(
                  Icons.swap_vert_circle_outlined,
                ),
              ),
              ListenableBuilder(
                listenable: _indexViewModel,
                builder: (_, __) {
                  return DropdownInputComponent(
                    textFormFieldController:
                        _indexViewModel.convertedTextEditingController,
                    value: _indexViewModel.converted,
                    onChangedDropDown: (constructor) {
                      _indexViewModel.changeConvertedUnit(constructor);
                    },
                    readOnly: true,
                    items: _dropDownConvertedItems(),
                  );
                },
              ),
              const SizedBox(
                height: 16,
              ),
              OutlinedButton(
                onPressed: () {
                  try {
                    _indexViewModel.convert();
                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(e.toString().split(':')[1]),
                      ),
                    );
                  }
                },
                child: const Text('Converter'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<DropdownMenuItem<Unit Function(double)>> _dropDownToConvertItems() {
    return const [
      DropdownMenuItem<Unit Function(double)>(
        value: CelsiusUnit.new,
        child: Text('Celsius'),
      ),
      DropdownMenuItem<Unit Function(double)>(
        value: KelvinUnit.new,
        child: Text('Kelvin'),
      ),
      DropdownMenuItem<Unit Function(double)>(
        value: SecondUnit.new,
        child: Text('Segundos'),
      ),
      DropdownMenuItem<Unit Function(double)>(
        value: MinuteUnit.new,
        child: Text('Minutos'),
      ),
      DropdownMenuItem<Unit Function(double)>(
        value: HourUnit.new,
        child: Text('Horas'),
      ),
      DropdownMenuItem<Unit Function(double)>(
        value: DayUnit.new,
        child: Text('Dia'),
      ),
      DropdownMenuItem<Unit Function(double)>(
        value: MonthUnit.new,
        child: Text('Mês'),
      ),
      DropdownMenuItem<Unit Function(double)>(
        value: YearUnit.new,
        child: Text('Ano'),
      ),
      DropdownMenuItem<Unit Function(double)>(
        value: CentimeterUnit.new,
        child: Text('Centimetro'),
      ),
      DropdownMenuItem<Unit Function(double)>(
        value: MeterUnit.new,
        child: Text('Metro'),
      ),
      DropdownMenuItem<Unit Function(double)>(
        value: KilometerUnit.new,
        child: Text('Kilometro'),
      ),
      DropdownMenuItem<Unit Function(double)>(
        value: MileUnit.new,
        child: Text('Milha'),
      ),
      DropdownMenuItem<Unit Function(double)>(
        value: InchUnit.new,
        child: Text('Polegada'),
      ),
    ];
  }

  List<DropdownMenuItem<Unit Function(double)>> _dropDownConvertedItems() {
    if (_indexViewModel.toConvert == null) return _dropDownToConvertItems();
    return _dropDownToConvertItems()
        .where(
          (dropdownItem) => _indexViewModel.toConvert!(0).converters
              .containsKey(dropdownItem.value),
        )
        .toList();
  }
}
