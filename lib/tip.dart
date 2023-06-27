import 'package:flutter/material.dart';

class TipCalculatorScreen extends StatefulWidget {
  const TipCalculatorScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TipCalculatorScreenState createState() => _TipCalculatorScreenState();
}

class _TipCalculatorScreenState extends State<TipCalculatorScreen> {
  double billAmount = 0.0;
  double tipPercentage = 15.0;
  int splitBy = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tip Calculator'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.blue,
              padding: const EdgeInsets.all(16.0),
              child: const Center(
                child: Text(
                  'Tip Calculator',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('Bill Amount:'),
                  const SizedBox(height: 10),
                  Text(
                    'Rs. $billAmount',
                    style: const TextStyle(fontSize: 24),
                  ),
                  const SizedBox(height: 30),
                  const Text('Tip Percentage:'),
                  const SizedBox(height: 10),
                  Text(
                    '${tipPercentage.toStringAsFixed(0)}%',
                    style: const TextStyle(fontSize: 24),
                  ),
                  const SizedBox(height: 30),
                  Slider(
                    min: 0,
                    max: 100,
                    divisions: 20,
                    value: tipPercentage,
                    onChanged: (value) {
                      setState(() {
                        tipPercentage = value;
                      });
                    },
                  ),
                  const SizedBox(height: 30),
                  const Text('Split By:'),
                  const SizedBox(height: 10),
                  Text(
                    '$splitBy',
                    style: const TextStyle(fontSize: 24),
                  ),
                  const SizedBox(height: 30),
                  Slider(
                    min: 1,
                    max: 10,
                    divisions: 9,
                    value: splitBy.toDouble(),
                    onChanged: (value) {
                      setState(() {
                        splitBy = value.toInt();
                      });
                    },
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      // Calculate tip amount
                      double tipAmount = billAmount * (tipPercentage / 100);
                      // Calculate total bill
                      double totalAmount = billAmount + tipAmount;
                      // Calculate amount per person
                      double amountPerPerson = totalAmount / splitBy;
                      // Show the result in a dialog
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Result'),
                            content: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                    'Tip Amount: Rs. ${tipAmount.toStringAsFixed(2)}'),
                                const SizedBox(height: 10),
                                Text(
                                    'Total Amount: Rs. ${totalAmount.toStringAsFixed(2)}'),
                                const SizedBox(height: 10),
                                Text(
                                    'Amount per Person: Rs. ${amountPerPerson.toStringAsFixed(2)}'),
                              ],
                            ),
                            actions: [
                              TextButton(
                                child: const Text('OK'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: const Text('Calculate'),
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: true),
                    onChanged: (value) {
                      setState(() {
                        billAmount = double.tryParse(value) ?? 0.0;
                      });
                    },
                    decoration: const InputDecoration(
                      labelText: 'Enter Bill Amount',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
