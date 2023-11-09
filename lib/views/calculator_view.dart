import 'package:flutter/material.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(32.0),
      child: Column(
        // column takes multiple items so we need children not child
        children: [
          // display
          DisplayOne(hint: "Enter first number"),
          SizedBox(
            height: 30,
          ),
          DisplayOne(hint: "Enter second number"),
          // expand
          // button
        ],
      ),
    );
  }
}

class DisplayOne extends StatelessWidget {
  const DisplayOne({
    super.key,
    this.hint = "Enter a number",
  });

  final String? hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      autofocus: true,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.black,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 3.0,
          ),
        ),
        hintText: hint,
        hintStyle: const TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}
