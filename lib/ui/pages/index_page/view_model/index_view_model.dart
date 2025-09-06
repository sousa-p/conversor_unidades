import 'package:conversor_unidades/domain/interfaces/unit_interface.dart';
import 'package:flutter/material.dart';

class IndexViewModel extends ChangeNotifier {
  IndexViewModel({
    this.toConvert,
    this.converted,
    TextEditingController? toConvertTextEditingController,
    TextEditingController? convertedTextEditingController,
  })  : toConvertTextEditingController =
            toConvertTextEditingController ?? TextEditingController(),
        convertedTextEditingController =
            convertedTextEditingController ?? TextEditingController();

  Unit Function(double)? toConvert;
  TextEditingController toConvertTextEditingController;
  Unit Function(double)? converted;
  TextEditingController convertedTextEditingController;

  void swap() {
    final aux = toConvert;

    toConvert = converted;
    converted = aux;

    notifyListeners();
  }

  void changeToConvertUnit(Unit Function(double) constructor) {
    toConvert = constructor;
    converted = null;
    notifyListeners();
  }

  void changeConvertedUnit(Unit Function(double) constructor) {
    converted = constructor;
    notifyListeners();
  }

  void convert() {
    try {
      if (toConvert == null || converted == null) {
        throw Exception('Preencha todos os valores');
      }

      final parsedValue = double.parse(toConvertTextEditingController.text);
      final result = toConvert!(parsedValue).convert(converted!);

      convertedTextEditingController.text = result.value.toString();

      notifyListeners();
    } catch (_) {
      rethrow;
    }
  }
}
