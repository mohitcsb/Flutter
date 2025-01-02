import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CalculationScreen(),
    );
  }
}

class CalculationScreen extends StatefulWidget {
  @override
  _CalculationScreenState createState() => _CalculationScreenState();
}

class _CalculationScreenState extends State<CalculationScreen> {
  final TextEditingController _amount1Controller = TextEditingController();
  final TextEditingController _amount2Controller = TextEditingController();
  final TextEditingController _discountController = TextEditingController();
  final TextEditingController _vatController = TextEditingController();

  String _finalAmount = "0.00";

  void _calculate() {
    double amount1 = double.tryParse(_amount1Controller.text) ?? 0;
    double amount2 = double.tryParse(_amount2Controller.text) ?? 0;
    double discount = double.tryParse(_discountController.text) ?? 0;
    double vat = double.tryParse(_vatController.text) ?? 0;

    // Calculate total amount before discount
    double totalAmount = amount1 + amount2;

    // Apply discount
    double discountAmount = totalAmount * (discount / 100);
    double amountAfterDiscount = totalAmount - discountAmount;

    // Add VAT
    double vatAmount = amountAfterDiscount * (vat / 100);
    double finalAmount = amountAfterDiscount + vatAmount;

    setState(() {
      _finalAmount = finalAmount.toStringAsFixed(2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Amount Calculation")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Amount 1 Field
              TextField(
                controller: _amount1Controller,
                decoration: InputDecoration(
                  labelText: "Enter Amount 1",
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 16),
        
              // Amount 2 Field
              TextField(
                controller: _amount2Controller,
                decoration: InputDecoration(
                  labelText: "Enter Amount 2",
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 16),
        
              // Discount Field
              TextField(
                controller: _discountController,
                decoration: InputDecoration(
                  labelText: "Enter Discount (%)",
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 16),
        
              // VAT Field
              TextField(
                controller: _vatController,
                decoration: InputDecoration(
                  labelText: "Enter VAT (%)",
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 32),
        
              // Calculate Button
              ElevatedButton(
                onPressed: _calculate,
                child: Text("Calculate Final Amount"),
              ),
              SizedBox(height: 32),
        
              // Final Amount Display
              Text(
                "Final Amount: \$$_finalAmount",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, "third");
              }, child: Text("Go 3rd page")),
        
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, "home");
              }, child: Text("Back")),
        
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, "fourth");
              }, child: Text("Go to 4th page"))
            ],
        
          ),
        ),
      ),
    );
  }
}
