import 'package:flutter/material.dart';

class TipCalculator extends StatefulWidget {
  const TipCalculator({super.key});

  @override
  State<TipCalculator> createState() => _TipCalculatorState();
}

class _TipCalculatorState extends State<TipCalculator> {
  double totalTip = 0;
  double totalBill = 0.0;
  TextEditingController billController = TextEditingController();
  TextEditingController tipController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tip Calculator")),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
        child: Column(children: [
          Text("Total Tip: $totalTip"),
          Text("Total Bill after calculating Tip: $totalBill"),
          TextField(
            controller: billController,
            decoration: const InputDecoration(hintText: "Enter Bill Amount"),
          ),
          TextField(
            controller: tipController,
            decoration: const InputDecoration(hintText: "Enter Tip Percentage"),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  double billValue =
                      double.tryParse(billController.text) ?? 0.0;
                  double tipValue = double.tryParse(tipController.text) ?? 0.0;
                  totalTip = billValue * (tipValue / 100);
                  totalBill = billValue + totalTip;
                });
              },
              child: const Text("Calculate Tip"))
        ]),
      ),
    );
  }
}
