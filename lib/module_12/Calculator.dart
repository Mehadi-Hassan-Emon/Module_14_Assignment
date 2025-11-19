
import 'package:flutter/material.dart';
import 'package:flutter_13_new/module_12/widget/build_button.dart';


class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String _output = '0';
  String _input = '';
  String _operator = '';
  double num1 = 0;
  double num2 = 0;

  void buttonPress(String value) {
    setState(() {
      if (value == 'C' || value == 'AC') {
        _output = '0';
        _input = '';
        _operator = '';
        num1 = 0;
        num2 = 0;
      }
      else if (value == '☒' || value == '⌫') {
        if (_input.isNotEmpty) {
          _input = _input.substring(0, _input.length - 1);
          if (_input.isEmpty) {
            _output = '0';
          } else {
            _output = _input;
          }
        }
      }
      else if (value == '=') {
        num2 = double.tryParse(_input.split(_operator).last) ?? 0;

        if (_operator == '+') {
          _output = (num1 + num2).toString();
        } else if (_operator == '-') {
          _output = (num1 - num2).toString();
        } else if (_operator == '*') {
          _output = (num1 * num2).toString();
        } else if (_operator == '÷') {
          _output = num2 != 0 ? (num1 / num2).toString() : 'Error';
        } else if (_operator == '%') {
          _output = (double.parse(_input) / 100).toString();
        }
      }
      else if (['+', '-', '*', '÷'].contains(value)) {
        num1 = double.tryParse(_input) ?? 0;
        _operator = value;
        _input += ' $value ';
      }
      else if (value == '.') {
        List<String> parts = _input.split(RegExp(r'[\+\-\*÷ ]'));
        String lastPart = parts.isNotEmpty ? parts.last : '';
        if (!lastPart.contains('.')) {
          _input += value;
        }


      }else if (value == '+/-') {
        List<String> parts = _input.split(RegExp(r'[\+\-\*÷ ]'));
        String lastPart = parts.isNotEmpty ? parts.last : '';

        if (lastPart.isNotEmpty) {
          // চূড়ান্ত number এর চিহ্ন উল্টানো
          String toggled = lastPart.startsWith('-')
              ? lastPart.substring(1)
              : '-' + lastPart;

          // input update করা
          _input =
              _input.substring(0, _input.length - lastPart.length) + toggled;
          _output = toggled;
        }
      }




      else {
        _input += value;
        _output = value;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [

                    Text(
                      _input,
                      style: const TextStyle(
                        fontSize: 28,
                        color: Colors.white70,
                      ),
                    ),
                    const SizedBox(height: 10),
                    // ✅ show output result
                    Text(
                      _output,
                      style: const TextStyle(
                        fontSize: 60,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Buildbutton(onclick: () => buttonPress('AC'), text: 'AC'),
                Buildbutton(onclick: () => buttonPress('%'), text: '%'),
                Buildbutton(onclick: () => buttonPress('☒'), text: '☒'),
                Buildbutton(onclick: () => buttonPress('+/-'), text: '+/-'),

              ],
            ),
            Row(
              children: [
                Buildbutton(onclick: () => buttonPress('7'), text: '7'),
                Buildbutton(onclick: () => buttonPress('8'), text: '8'),
                Buildbutton(onclick: () => buttonPress('9'), text: '9'),
                Buildbutton(
                    onclick: () => buttonPress('÷'),
                    text: '÷',
                    color: Colors.orange),
              ],
            ),
            Row(
              children: [
                Buildbutton(onclick: () => buttonPress('4'), text: '4'),
                Buildbutton(onclick: () => buttonPress('5'), text: '5'),
                Buildbutton(onclick: () => buttonPress('6'), text: '6'),
                Buildbutton(
                    onclick: () => buttonPress('*'),
                    text: '*',
                    color: Colors.orange),
              ],
            ),
            Row(
              children: [
                Buildbutton(onclick: () => buttonPress('1'), text: '1'),
                Buildbutton(onclick: () => buttonPress('2'), text: '2'),
                Buildbutton(onclick: () => buttonPress('3'), text: '3'),
                Buildbutton(
                    onclick: () => buttonPress('-'),
                    text: '-',
                    color: Colors.orange),
              ],
            ),
            Row(
              children: [
                Buildbutton(onclick: () => buttonPress('='), text: '='),
                Buildbutton(onclick: () => buttonPress('0'), text: '0'),
                Buildbutton(onclick: () => buttonPress('.'), text: '.'),
                Buildbutton(
                    onclick: () => buttonPress('+'),
                    text: '+',
                    color: Colors.orange),
              ],
            ),
          ],
        ),
      ),
    );
  }
}















//simple

// import 'package:flutter/material.dart';
// import 'package:flutter_13_new/module_12/widget/build_button.dart';
// class Calculator extends StatefulWidget {
//   const Calculator({super.key});
//
//   @override
//   State<Calculator> createState() => _CalculatorState();
// }
//
// class _CalculatorState extends State<Calculator> {
//   String  _output = '0';
//   String  _input = '0';
//   String  _operator = '';
//   double num1 = 0;
//   double num2 =0;
//
//   void buttonPress(String value){//button press korle dekha jabe
//     print('Button pressed $value');
//
//     setState(() {
//       if(value == 'C') { //jodu value c di tahole sob kichu 0 hoye jabe
//         _output = '0';
//         _input = '0';
//         _operator = '';
//         num1 = 0;
//         num2 = 0;
//       }else if(value == '=') { //jodi value = hoi
//         num2 = double.parse(_input);
//
//         if (_operator == '+') {
//           _output = (num1 + num2).toString();
//         } else if (_operator == '-') {
//           _output = (num1 - num2).toString();
//         } else if (_operator == '*') {
//           _output = (num1 * num2).toString();
//         } else if (_operator == '÷') {
//           _output = num2!= 0 ? (num1 / num2).toString() : 'Error';
//         }
//         // else if(_operator == '%' ){
//           //   _output  = (double.parse(_input)/100).toString();
//
//         _input=_output;
//       }
//
//
//
//       else if (['+','-','*','÷'].contains(value)){//value te jodi eita tahke tarmane first value paise 2nd value jonno asse
//
//         num1 = double.parse(_input);//num1 input ta pass korse
//         _operator = value;
//         _input ='';
//         return;
//       }else{
//         if(_input=='0'){
//           _input = value;
//         }else{
//           _input += value;
//         }
//         _output = _input;
//       }
//     });
//   }
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//         body: SafeArea(
//             child: Column(
//               children: [
//                 Expanded(
//                   child: Container(
//                     alignment: Alignment.bottomRight,
//                     child: Column(
//                   children: [
//                    Text('$num1 $_operator $_input',style: TextStyle(fontSize: 24,color: Colors.white),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Text(_output,style: TextStyle(fontSize: 50,color: Colors.white,fontWeight: FontWeight.bold),)
//                    ],
//                    )
//                    ),
//                 ),
//                 Row(
//                     children: [
//                       Buildbutton(onclick: ()  => buttonPress('7'), text: '7',),
//                       Buildbutton(onclick: ()  => buttonPress('8'), text: '8',),
//                       Buildbutton(onclick: ()  => buttonPress('9'), text: '9',),
//                       Buildbutton(onclick: ()  => buttonPress('÷'), text: '÷',color: Colors.orange,),
//                     ]
//                 ),
//                 Row(
//                     children: [
//                       Buildbutton(onclick: ()  => buttonPress('4'), text: '4',),
//                       Buildbutton(onclick: ()  => buttonPress('5'), text: '5',),
//                       Buildbutton(onclick: ()  => buttonPress('6'), text: '6',),
//                       Buildbutton(onclick: ()  => buttonPress('*'), text: '*',color: Colors.orange,),
//                     ]
//                 ),
//                 Row(
//                     children: [
//                       Buildbutton(onclick: ()  => buttonPress('1'), text: '1',),
//                       Buildbutton(onclick: ()  => buttonPress('2'), text: '2',),
//                       Buildbutton(onclick: ()  => buttonPress('3'), text: '3',),
//                       Buildbutton(onclick: ()  => buttonPress('-'), text: '-',color: Colors.orange,),
//                     ]
//                 ),
//                 Row(
//                     children: [
//                       Buildbutton(onclick: ()  => buttonPress('C'), text: 'C',),
//                       Buildbutton(onclick: ()  => buttonPress('0'), text: '0',),
//                       Buildbutton(onclick: ()  => buttonPress('='), text: '=',),
//                       Buildbutton(onclick: ()  => buttonPress('+'), text: '+',color: Colors.orange,),
//                     ]
//                 ),
//               ],
//             )
//         )
//     );
//   }
// }