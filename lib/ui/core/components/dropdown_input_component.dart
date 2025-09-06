import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DropdownInputComponent extends StatelessWidget {
  const DropdownInputComponent({
    super.key,
    this.items,
    this.onChangedDropDown,
    this.textFormFieldController,
    this.inputFormatters,
    this.value,
    this.readOnly = false,
  });

  final dynamic value;
  final List<DropdownMenuItem<dynamic>>? items;
  final void Function(dynamic)? onChangedDropDown;
  final TextEditingController? textFormFieldController;
  final List<TextInputFormatter>? inputFormatters;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        DropdownButton(
          value: value,
          items: items,
          onChanged: onChangedDropDown,
        ),
        const SizedBox(width: 16),
        SizedBox(
          width: 250,
          child: TextFormField(
            readOnly: readOnly,
            decoration: const InputDecoration(border: OutlineInputBorder()),
            inputFormatters: inputFormatters,
            controller: textFormFieldController,
          ),
        )
      ],
    );
  }
}
