import 'package:app/app/models/Currency.dart';
import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  final List<Currency> items;
  final Currency selectedItem;
  final TextEditingController controller;
  final void Function(Currency currency) onChanged;

  const CurrencyBox(
      {Key key, this.items, this.controller, this.onChanged, this.selectedItem})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 65,
            child: DropdownButton<Currency>(
              iconEnabledColor: Colors.amber,
              value: selectedItem,
              isExpanded: true,
              underline: Container(
                height: 1,
                color: Colors.amber,
              ),
              items: items
                  .map(
                    (e) => DropdownMenuItem(
                      child: Text(e.name),
                      value: e,
                    ),
                  )
                  .toList(),
              onChanged: onChanged,
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 2,
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.amber),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.amber),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
