import 'package:flutter/material.dart';

class CustomDropdownButton extends StatefulWidget {
  final String text;
  final String value;
  const CustomDropdownButton(
      {super.key, required this.text, required this.value});

  @override
  State<CustomDropdownButton> createState() => _CustomDropdownButtonState();
}

class _CustomDropdownButtonState extends State<CustomDropdownButton> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 30,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.withOpacity(0.5)),
          borderRadius: BorderRadius.circular(5),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: widget.text,
            icon: const Icon(
              Icons.arrow_drop_down,
              color: Colors.grey,
            ),
            style: const TextStyle(color: Colors.grey),
            onChanged: (String? newValue) {},
            items: <String>[widget.value]
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: const TextStyle(color: Colors.grey, fontSize: 14),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
