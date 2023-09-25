import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/button_values.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize=MediaQuery.of(context).size;
    return Scaffold (
      body: SafeArea(bottom: false,
                      child: Column(children: [
                        //output 
                        Expanded(
                          child: SingleChildScrollView(
                            reverse: true,
                            child: Container(
                              alignment: Alignment.bottomRight,
                              padding: const EdgeInsets.all(16),
                              child: const Text("0",style: TextStyle
                              (fontSize: 48,
                               fontWeight: FontWeight.bold,),
                               textAlign: TextAlign.end,),
                            ),
                          ),
                        ),
                        //butons
                        Wrap(
                          children: Btn.buttonValues
                          .map(
                           (value)=> SizedBox(
                            width: screenSize.width/4 ,
                            height: screenSize.width/5,
                            child: buildButton(value)),
                              ) .toList(),  
                        )
                      ]),),
    );
  }

 Widget buildButton(value){
  return Material(
    clipBehavior: Clip.hardEdge,
    shape: OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.white24,
         ),
      borderRadius: BorderRadius.circular(100)
    ),
    child: InkWell(
      child: Center(
        child: Text(value)),
    ),
  );
 }
  
}