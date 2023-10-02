import 'package:flutter/material.dart';

class BankAcount extends StatefulWidget {
  const BankAcount({super.key});

  @override
  State<BankAcount> createState() => _BankAcountState();
}

class _BankAcountState extends State<BankAcount> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Add Your Bank Account"),
          centerTitle: true,
        ),
      ),
    );
  }
}
